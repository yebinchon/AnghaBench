
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm_seq {int dummy; } ;
struct stfsm {int dev; scalar_t__ base; } ;


 scalar_t__ SPI_FAST_SEQ_DATA_REG ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int stfsm_fifo_available (struct stfsm*) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq const*) ;
 struct stfsm_seq stfsm_seq_load_fifo_byte ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static void stfsm_clear_fifo(struct stfsm *fsm)
{
 const struct stfsm_seq *seq = &stfsm_seq_load_fifo_byte;
 uint32_t words, i;


 words = stfsm_fifo_available(fsm);
 if (words) {
  for (i = 0; i < words; i++)
   readl(fsm->base + SPI_FAST_SEQ_DATA_REG);
  dev_dbg(fsm->dev, "cleared %d words from FIFO\n", words);
 }






 for (i = 0, words = 0; i < 4 && !words; i++) {
  stfsm_load_seq(fsm, seq);
  stfsm_wait_seq(fsm);
  words = stfsm_fifo_available(fsm);
 }


 if (words != 1) {
  dev_err(fsm->dev, "failed to clear bytes from the data FIFO\n");
  return;
 }


 readl(fsm->base + SPI_FAST_SEQ_DATA_REG);

 dev_dbg(fsm->dev, "cleared %d byte(s) from the data FIFO\n", 4 - i);
}
