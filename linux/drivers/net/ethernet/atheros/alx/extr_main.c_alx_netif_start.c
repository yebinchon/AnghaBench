
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_priv {int num_napi; int dev; TYPE_1__** qnapi; } ;
struct TYPE_2__ {int napi; } ;


 int napi_enable (int *) ;
 int netif_carrier_on (int ) ;
 int netif_tx_wake_all_queues (int ) ;

__attribute__((used)) static void alx_netif_start(struct alx_priv *alx)
{
 int i;

 netif_tx_wake_all_queues(alx->dev);
 for (i = 0; i < alx->num_napi; i++)
  napi_enable(&alx->qnapi[i]->napi);
 netif_carrier_on(alx->dev);
}
