
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm_seq {int* seq_opc; int addr_cfg; } ;


 int ADR_CFG_CSDEASSERT_ADD2 ;
 int ADR_CFG_CYCLES_ADD1 (int) ;
 int ADR_CFG_CYCLES_ADD2 (int) ;
 int ADR_CFG_PADS_1_ADD1 ;
 int ADR_CFG_PADS_1_ADD2 ;
 int S25FL_CMD_SE4 ;
 int SEQ_OPC_CYCLES (int) ;
 int SEQ_OPC_OPCODE (int ) ;
 int SEQ_OPC_PADS_1 ;

__attribute__((used)) static void stfsm_s25fl_prepare_erasesec_seq_32(struct stfsm_seq *seq)
{
 seq->seq_opc[1] = (SEQ_OPC_PADS_1 |
      SEQ_OPC_CYCLES(8) |
      SEQ_OPC_OPCODE(S25FL_CMD_SE4));

 seq->addr_cfg = (ADR_CFG_CYCLES_ADD1(16) |
    ADR_CFG_PADS_1_ADD1 |
    ADR_CFG_CYCLES_ADD2(16) |
    ADR_CFG_PADS_1_ADD2 |
    ADR_CFG_CSDEASSERT_ADD2);
}
