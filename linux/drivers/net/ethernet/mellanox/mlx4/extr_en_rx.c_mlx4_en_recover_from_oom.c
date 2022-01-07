
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {int rx_ring_num; TYPE_1__** rx_cq; int * rx_ring; int port_up; } ;
struct TYPE_2__ {int napi; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ mlx4_en_is_ring_empty (int ) ;
 int napi_reschedule (int *) ;

void mlx4_en_recover_from_oom(struct mlx4_en_priv *priv)
{
 int ring;

 if (!priv->port_up)
  return;

 for (ring = 0; ring < priv->rx_ring_num; ring++) {
  if (mlx4_en_is_ring_empty(priv->rx_ring[ring])) {
   local_bh_disable();
   napi_reschedule(&priv->rx_cq[ring]->napi);
   local_bh_enable();
  }
 }
}
