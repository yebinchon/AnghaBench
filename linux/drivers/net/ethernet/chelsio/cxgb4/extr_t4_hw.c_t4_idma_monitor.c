
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sge_idma_monitor_state {int idma_1s_thresh; int* idma_stalled; int* idma_qid; int* idma_warn; int* idma_state; } ;
struct adapter {int pdev_dev; } ;


 int SGE_DEBUG_DATA_HIGH_A ;
 int SGE_DEBUG_DATA_LOW_A ;
 int SGE_DEBUG_INDEX_A ;
 int SGE_IDMA_WARN_REPEAT ;
 int SGE_IDMA_WARN_THRESH ;
 int dev_warn (int ,char*,int,int,int,...) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_sge_decode_idma_state (struct adapter*,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_idma_monitor(struct adapter *adapter,
       struct sge_idma_monitor_state *idma,
       int hz, int ticks)
{
 int i, idma_same_state_cnt[2];
 t4_write_reg(adapter, SGE_DEBUG_INDEX_A, 13);
 idma_same_state_cnt[0] = t4_read_reg(adapter, SGE_DEBUG_DATA_HIGH_A);
 idma_same_state_cnt[1] = t4_read_reg(adapter, SGE_DEBUG_DATA_LOW_A);

 for (i = 0; i < 2; i++) {
  u32 debug0, debug11;







  if (idma_same_state_cnt[i] < idma->idma_1s_thresh) {
   if (idma->idma_stalled[i] >= SGE_IDMA_WARN_THRESH * hz)
    dev_warn(adapter->pdev_dev, "SGE idma%d, queue %u, "
      "resumed after %d seconds\n",
      i, idma->idma_qid[i],
      idma->idma_stalled[i] / hz);
   idma->idma_stalled[i] = 0;
   continue;
  }
  if (idma->idma_stalled[i] == 0) {
   idma->idma_stalled[i] = hz;
   idma->idma_warn[i] = 0;
  } else {
   idma->idma_stalled[i] += ticks;
   idma->idma_warn[i] -= ticks;
  }

  if (idma->idma_stalled[i] < SGE_IDMA_WARN_THRESH * hz)
   continue;



  if (idma->idma_warn[i] > 0)
   continue;
  idma->idma_warn[i] = SGE_IDMA_WARN_REPEAT * hz;





  t4_write_reg(adapter, SGE_DEBUG_INDEX_A, 0);
  debug0 = t4_read_reg(adapter, SGE_DEBUG_DATA_LOW_A);
  idma->idma_state[i] = (debug0 >> (i * 9)) & 0x3f;

  t4_write_reg(adapter, SGE_DEBUG_INDEX_A, 11);
  debug11 = t4_read_reg(adapter, SGE_DEBUG_DATA_LOW_A);
  idma->idma_qid[i] = (debug11 >> (i * 16)) & 0xffff;

  dev_warn(adapter->pdev_dev, "SGE idma%u, queue %u, potentially stuck in "
    "state %u for %d seconds (debug0=%#x, debug11=%#x)\n",
    i, idma->idma_qid[i], idma->idma_state[i],
    idma->idma_stalled[i] / hz,
    debug0, debug11);
  t4_sge_decode_idma_state(adapter, idma->idma_state[i]);
 }
}
