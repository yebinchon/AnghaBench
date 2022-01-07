
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int napi; int netdev; struct xgbe_channel** channel; scalar_t__ per_channel_irq; } ;
struct xgbe_channel {int napi; } ;


 int NAPI_POLL_WEIGHT ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int xgbe_all_poll ;
 int xgbe_one_poll ;

__attribute__((used)) static void xgbe_napi_enable(struct xgbe_prv_data *pdata, unsigned int add)
{
 struct xgbe_channel *channel;
 unsigned int i;

 if (pdata->per_channel_irq) {
  for (i = 0; i < pdata->channel_count; i++) {
   channel = pdata->channel[i];
   if (add)
    netif_napi_add(pdata->netdev, &channel->napi,
            xgbe_one_poll, NAPI_POLL_WEIGHT);

   napi_enable(&channel->napi);
  }
 } else {
  if (add)
   netif_napi_add(pdata->netdev, &pdata->napi,
           xgbe_all_poll, NAPI_POLL_WEIGHT);

  napi_enable(&pdata->napi);
 }
}
