
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm_seq {int* seq_opc; int seq_cfg; } ;
struct stfsm {int configuration; int dev; scalar_t__ base; } ;


 int CFG_S25FL_CHECK_ERROR_FLAGS ;
 unsigned long FLASH_MAX_BUSY_WAIT ;
 int FLASH_STATUS_BUSY ;
 int FLASH_STATUS_TIMEOUT ;
 int S25FL_STATUS_E_ERR ;
 int S25FL_STATUS_P_ERR ;
 int SEQ_OPC_CYCLES (int) ;
 int SEQ_OPC_OPCODE (int ) ;
 int SEQ_OPC_PADS_1 ;
 int SPINOR_OP_RDSR ;
 scalar_t__ SPI_FAST_SEQ_CFG ;
 int cond_resched () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq*) ;
 int stfsm_read_fifo (struct stfsm*,int*,int) ;
 struct stfsm_seq stfsm_seq_read_status_fifo ;
 int stfsm_wait_seq (struct stfsm*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static uint8_t stfsm_wait_busy(struct stfsm *fsm)
{
 struct stfsm_seq *seq = &stfsm_seq_read_status_fifo;
 unsigned long deadline;
 uint32_t status;
 int timeout = 0;


 seq->seq_opc[0] = (SEQ_OPC_PADS_1 |
      SEQ_OPC_CYCLES(8) |
      SEQ_OPC_OPCODE(SPINOR_OP_RDSR));


 stfsm_load_seq(fsm, seq);




 deadline = jiffies + FLASH_MAX_BUSY_WAIT;
 while (!timeout) {
  if (time_after_eq(jiffies, deadline))
   timeout = 1;

  stfsm_wait_seq(fsm);

  stfsm_read_fifo(fsm, &status, 4);

  if ((status & FLASH_STATUS_BUSY) == 0)
   return 0;

  if ((fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS) &&
      ((status & S25FL_STATUS_P_ERR) ||
       (status & S25FL_STATUS_E_ERR)))
   return (uint8_t)(status & 0xff);

  if (!timeout)

   writel(seq->seq_cfg, fsm->base + SPI_FAST_SEQ_CFG);

  cond_resched();
 }

 dev_err(fsm->dev, "timeout on wait_busy\n");

 return FLASH_STATUS_TIMEOUT;
}
