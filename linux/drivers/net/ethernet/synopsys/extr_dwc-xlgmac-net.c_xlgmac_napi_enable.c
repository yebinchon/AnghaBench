
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; int napi; int netdev; struct xlgmac_channel* channel_head; scalar_t__ per_channel_irq; } ;
struct xlgmac_channel {int napi; } ;


 int NAPI_POLL_WEIGHT ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int xlgmac_all_poll ;
 int xlgmac_one_poll ;

__attribute__((used)) static void xlgmac_napi_enable(struct xlgmac_pdata *pdata, unsigned int add)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 if (pdata->per_channel_irq) {
  channel = pdata->channel_head;
  for (i = 0; i < pdata->channel_count; i++, channel++) {
   if (add)
    netif_napi_add(pdata->netdev, &channel->napi,
            xlgmac_one_poll,
            NAPI_POLL_WEIGHT);

   napi_enable(&channel->napi);
  }
 } else {
  if (add)
   netif_napi_add(pdata->netdev, &pdata->napi,
           xlgmac_all_poll, NAPI_POLL_WEIGHT);

  napi_enable(&pdata->napi);
 }
}
