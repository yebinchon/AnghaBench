
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcmgenet_tx_ring {int napi; } ;
struct bcmgenet_priv {struct bcmgenet_tx_ring* tx_rings; TYPE_1__* hw_params; } ;
struct TYPE_2__ {unsigned int tx_queues; } ;


 size_t DESC_INDEX ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void bcmgenet_fini_tx_napi(struct bcmgenet_priv *priv)
{
 unsigned int i;
 struct bcmgenet_tx_ring *ring;

 for (i = 0; i < priv->hw_params->tx_queues; ++i) {
  ring = &priv->tx_rings[i];
  netif_napi_del(&ring->napi);
 }

 ring = &priv->tx_rings[DESC_INDEX];
 netif_napi_del(&ring->napi);
}
