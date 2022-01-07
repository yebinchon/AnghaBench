
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int napi; struct xgbe_channel** channel; scalar_t__ per_channel_irq; } ;
struct xgbe_channel {int napi; } ;


 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void xgbe_napi_disable(struct xgbe_prv_data *pdata, unsigned int del)
{
 struct xgbe_channel *channel;
 unsigned int i;

 if (pdata->per_channel_irq) {
  for (i = 0; i < pdata->channel_count; i++) {
   channel = pdata->channel[i];
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
