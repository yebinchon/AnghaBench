
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcmgenet_tx_ring {int (* int_enable ) (struct bcmgenet_tx_ring*) ;int napi; } ;
struct bcmgenet_priv {struct bcmgenet_tx_ring* tx_rings; TYPE_1__* hw_params; } ;
struct TYPE_2__ {unsigned int tx_queues; } ;


 size_t DESC_INDEX ;
 int napi_enable (int *) ;
 int stub1 (struct bcmgenet_tx_ring*) ;
 int stub2 (struct bcmgenet_tx_ring*) ;

__attribute__((used)) static void bcmgenet_enable_tx_napi(struct bcmgenet_priv *priv)
{
 unsigned int i;
 struct bcmgenet_tx_ring *ring;

 for (i = 0; i < priv->hw_params->tx_queues; ++i) {
  ring = &priv->tx_rings[i];
  napi_enable(&ring->napi);
  ring->int_enable(ring);
 }

 ring = &priv->tx_rings[DESC_INDEX];
 napi_enable(&ring->napi);
 ring->int_enable(ring);
}
