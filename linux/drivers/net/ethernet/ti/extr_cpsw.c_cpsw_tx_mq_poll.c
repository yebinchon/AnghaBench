
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct napi_struct {int dummy; } ;
struct cpsw_vector {int budget; int ch; } ;
struct cpsw_common {TYPE_1__* wr_regs; struct cpsw_vector* txv; int dma; } ;
struct TYPE_2__ {int tx_en; } ;


 scalar_t__ cpdma_chan_process (int ,int) ;
 int cpdma_ctrl_txchs_state (int ) ;
 int napi_complete (struct napi_struct*) ;
 struct cpsw_common* napi_to_cpsw (struct napi_struct*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,int *) ;

__attribute__((used)) static int cpsw_tx_mq_poll(struct napi_struct *napi_tx, int budget)
{
 u32 ch_map;
 int num_tx, cur_budget, ch;
 struct cpsw_common *cpsw = napi_to_cpsw(napi_tx);
 struct cpsw_vector *txv;


 ch_map = cpdma_ctrl_txchs_state(cpsw->dma);
 for (ch = 0, num_tx = 0; ch_map & 0xff; ch_map <<= 1, ch++) {
  if (!(ch_map & 0x80))
   continue;

  txv = &cpsw->txv[ch];
  if (unlikely(txv->budget > budget - num_tx))
   cur_budget = budget - num_tx;
  else
   cur_budget = txv->budget;

  num_tx += cpdma_chan_process(txv->ch, cur_budget);
  if (num_tx >= budget)
   break;
 }

 if (num_tx < budget) {
  napi_complete(napi_tx);
  writel(0xff, &cpsw->wr_regs->tx_en);
 }

 return num_tx;
}
