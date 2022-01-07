
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_prv_data {scalar_t__ channel_count; TYPE_1__** channel; } ;
struct TYPE_3__ {struct TYPE_3__* tx_ring; struct TYPE_3__* rx_ring; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void xgbe_free_channels(struct xgbe_prv_data *pdata)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(pdata->channel); i++) {
  if (!pdata->channel[i])
   continue;

  kfree(pdata->channel[i]->rx_ring);
  kfree(pdata->channel[i]->tx_ring);
  kfree(pdata->channel[i]);

  pdata->channel[i] = ((void*)0);
 }

 pdata->channel_count = 0;
}
