
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int work; } ;
struct TYPE_5__ {TYPE_1__ dim; } ;
struct bcmgenet_rx_ring {TYPE_2__ dim; int napi; } ;
struct bcmgenet_priv {struct bcmgenet_rx_ring* rx_rings; TYPE_3__* hw_params; } ;
struct TYPE_6__ {unsigned int rx_queues; } ;


 size_t DESC_INDEX ;
 int cancel_work_sync (int *) ;
 int napi_disable (int *) ;

__attribute__((used)) static void bcmgenet_disable_rx_napi(struct bcmgenet_priv *priv)
{
 unsigned int i;
 struct bcmgenet_rx_ring *ring;

 for (i = 0; i < priv->hw_params->rx_queues; ++i) {
  ring = &priv->rx_rings[i];
  napi_disable(&ring->napi);
  cancel_work_sync(&ring->dim.dim.work);
 }

 ring = &priv->rx_rings[DESC_INDEX];
 napi_disable(&ring->napi);
 cancel_work_sync(&ring->dim.dim.work);
}
