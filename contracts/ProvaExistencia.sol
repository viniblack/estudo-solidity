pragma solidity >=0.4.25 <0.7.0;

contract ProvaExistencia {
  bytes32[] private provas;

  function armazenar(bytes32 prova) public{
    provas.push(prova);
  }

  function checar(bytes32 prova) public view returns (bool) {
    for (uint256 idx = 0; idx < provas.length; idx++){
      if(provas[idx] == prova){
        return true;
      }
    }
    return false;
  }

  function calcularProva(string memory documento) public pure returns (bytes32){
    return sha256(bytes(documento));
  }
}