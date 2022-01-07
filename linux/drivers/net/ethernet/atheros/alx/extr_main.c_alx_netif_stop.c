
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_priv {int num_napi; TYPE_1__** qnapi; int dev; } ;
struct TYPE_2__ {int napi; } ;


 int napi_disable (int *) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_trans_update (int ) ;
 int netif_tx_disable (int ) ;

__attribute__((used)) static void alx_netif_stop(struct alx_priv *alx)
{
 int i;

 netif_trans_update(alx->dev);
 if (netif_carrier_ok(alx->dev)) {
  netif_carrier_off(alx->dev);
  netif_tx_disable(alx->dev);
  for (i = 0; i < alx->num_napi; i++)
   napi_disable(&alx->qnapi[i]->napi);
 }
}
