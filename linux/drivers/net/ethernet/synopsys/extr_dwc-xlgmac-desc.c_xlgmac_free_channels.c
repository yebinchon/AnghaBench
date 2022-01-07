
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlgmac_pdata {scalar_t__ channel_count; TYPE_1__* channel_head; } ;
struct TYPE_2__ {struct TYPE_2__* rx_ring; struct TYPE_2__* tx_ring; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void xlgmac_free_channels(struct xlgmac_pdata *pdata)
{
 if (!pdata->channel_head)
  return;

 kfree(pdata->channel_head->tx_ring);
 pdata->channel_head->tx_ring = ((void*)0);

 kfree(pdata->channel_head->rx_ring);
 pdata->channel_head->rx_ring = ((void*)0);

 kfree(pdata->channel_head);

 pdata->channel_head = ((void*)0);
 pdata->channel_count = 0;
}
