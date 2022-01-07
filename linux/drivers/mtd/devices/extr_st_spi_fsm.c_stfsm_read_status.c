
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm_seq {int* seq_opc; } ;
struct stfsm {int dev; } ;


 int BUG_ON (int) ;
 int SEQ_OPC_CYCLES (int) ;
 int SEQ_OPC_OPCODE (int ) ;
 int SEQ_OPC_PADS_1 ;
 int dev_dbg (int ,char*,int ,int) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq*) ;
 int stfsm_read_fifo (struct stfsm*,int *,int) ;
 struct stfsm_seq stfsm_seq_read_status_fifo ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static int stfsm_read_status(struct stfsm *fsm, uint8_t cmd,
        uint8_t *data, int bytes)
{
 struct stfsm_seq *seq = &stfsm_seq_read_status_fifo;
 uint32_t tmp;
 uint8_t *t = (uint8_t *)&tmp;
 int i;

 dev_dbg(fsm->dev, "read 'status' register [0x%02x], %d byte(s)\n",
  cmd, bytes);

 BUG_ON(bytes != 1 && bytes != 2);

 seq->seq_opc[0] = (SEQ_OPC_PADS_1 | SEQ_OPC_CYCLES(8) |
      SEQ_OPC_OPCODE(cmd)),

 stfsm_load_seq(fsm, seq);

 stfsm_read_fifo(fsm, &tmp, 4);

 for (i = 0; i < bytes; i++)
  data[i] = t[i];

 stfsm_wait_seq(fsm);

 return 0;
}
