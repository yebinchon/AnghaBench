
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct napi_struct {int dummy; } ;
struct cpsw_vector {int budget; int ch; } ;
struct cpsw_common {TYPE_1__* wr_regs; struct cpsw_vector* rxv; int dma; } ;
struct TYPE_2__ {int rx_en; } ;


 scalar_t__ cpdma_chan_process (int ,int) ;
 int cpdma_ctrl_rxchs_state (int ) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct cpsw_common* napi_to_cpsw (struct napi_struct*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,int *) ;

__attribute__((used)) static int cpsw_rx_mq_poll(struct napi_struct *napi_rx, int budget)
{
 u32 ch_map;
 int num_rx, cur_budget, ch;
 struct cpsw_common *cpsw = napi_to_cpsw(napi_rx);
 struct cpsw_vector *rxv;


 ch_map = cpdma_ctrl_rxchs_state(cpsw->dma);
 for (ch = 0, num_rx = 0; ch_map; ch_map >>= 1, ch++) {
  if (!(ch_map & 0x01))
   continue;

  rxv = &cpsw->rxv[ch];
  if (unlikely(rxv->budget > budget - num_rx))
   cur_budget = budget - num_rx;
  else
   cur_budget = rxv->budget;

  num_rx += cpdma_chan_process(rxv->ch, cur_budget);
  if (num_rx >= budget)
   break;
 }

 if (num_rx < budget) {
  napi_complete_done(napi_rx, num_rx);
  writel(0xff, &cpsw->wr_regs->rx_en);
 }

 return num_rx;
}
