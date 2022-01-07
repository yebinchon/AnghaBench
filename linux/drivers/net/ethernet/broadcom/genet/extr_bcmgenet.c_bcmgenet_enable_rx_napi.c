
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcmgenet_rx_ring {int (* int_enable ) (struct bcmgenet_rx_ring*) ;int napi; } ;
struct bcmgenet_priv {struct bcmgenet_rx_ring* rx_rings; TYPE_1__* hw_params; } ;
struct TYPE_2__ {unsigned int rx_queues; } ;


 size_t DESC_INDEX ;
 int napi_enable (int *) ;
 int stub1 (struct bcmgenet_rx_ring*) ;
 int stub2 (struct bcmgenet_rx_ring*) ;

__attribute__((used)) static void bcmgenet_enable_rx_napi(struct bcmgenet_priv *priv)
{
 unsigned int i;
 struct bcmgenet_rx_ring *ring;

 for (i = 0; i < priv->hw_params->rx_queues; ++i) {
  ring = &priv->rx_rings[i];
  napi_enable(&ring->napi);
  ring->int_enable(ring);
 }

 ring = &priv->rx_rings[DESC_INDEX];
 napi_enable(&ring->napi);
 ring->int_enable(ring);
}
