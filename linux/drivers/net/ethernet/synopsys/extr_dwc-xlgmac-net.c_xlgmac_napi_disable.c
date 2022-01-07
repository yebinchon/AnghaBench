
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; int napi; struct xlgmac_channel* channel_head; scalar_t__ per_channel_irq; } ;
struct xlgmac_channel {int napi; } ;


 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void xlgmac_napi_disable(struct xlgmac_pdata *pdata, unsigned int del)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 if (pdata->per_channel_irq) {
  channel = pdata->channel_head;
  for (i = 0; i < pdata->channel_count; i++, channel++) {
   napi_disable(&channel->napi);

   if (del)
    netif_napi_del(&channel->napi);
  }
 } else {
  napi_disable(&pdata->napi);

  if (del)
   netif_napi_del(&pdata->napi);
 }
}
