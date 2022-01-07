
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_queues; } ;
struct gve_priv {TYPE_1__ tx_cfg; } ;


 int gve_tx_free_ring (struct gve_priv*,int) ;

void gve_tx_free_rings(struct gve_priv *priv)
{
 int i;

 for (i = 0; i < priv->tx_cfg.num_queues; i++)
  gve_tx_free_ring(priv, i);
}
