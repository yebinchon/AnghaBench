
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int napi_poll_txtimer; } ;
struct napi_struct {int dummy; } ;
struct xlgmac_pdata {TYPE_1__ stats; scalar_t__ per_channel_irq; struct napi_struct napi; } ;
struct xlgmac_channel {scalar_t__ tx_timer_active; int dma_irq; struct napi_struct napi; struct xlgmac_pdata* pdata; } ;
struct timer_list {int dummy; } ;


 int __napi_schedule (struct napi_struct*) ;
 struct xlgmac_channel* channel ;
 int disable_irq_nosync (int ) ;
 struct xlgmac_channel* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ napi_schedule_prep (struct napi_struct*) ;
 int tx_timer ;
 int xlgmac_disable_rx_tx_ints (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_tx_timer(struct timer_list *t)
{
 struct xlgmac_channel *channel = from_timer(channel, t, tx_timer);
 struct xlgmac_pdata *pdata = channel->pdata;
 struct napi_struct *napi;

 napi = (pdata->per_channel_irq) ? &channel->napi : &pdata->napi;

 if (napi_schedule_prep(napi)) {

  if (pdata->per_channel_irq)
   disable_irq_nosync(channel->dma_irq);
  else
   xlgmac_disable_rx_tx_ints(pdata);

  pdata->stats.napi_poll_txtimer++;

  __napi_schedule(napi);
 }

 channel->tx_timer_active = 0;
}
