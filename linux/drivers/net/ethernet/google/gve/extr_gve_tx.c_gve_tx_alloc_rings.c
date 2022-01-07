
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_queues; } ;
struct gve_priv {int dev; TYPE_1__ tx_cfg; } ;


 int drv ;
 int gve_tx_alloc_ring (struct gve_priv*,int) ;
 int gve_tx_free_ring (struct gve_priv*,int) ;
 int netif_err (struct gve_priv*,int ,int ,char*,int,int) ;

int gve_tx_alloc_rings(struct gve_priv *priv)
{
 int err = 0;
 int i;

 for (i = 0; i < priv->tx_cfg.num_queues; i++) {
  err = gve_tx_alloc_ring(priv, i);
  if (err) {
   netif_err(priv, drv, priv->dev,
      "Failed to alloc tx ring=%d: err=%d\n",
      i, err);
   break;
  }
 }

 if (err) {
  int j;

  for (j = 0; j < i; j++)
   gve_tx_free_ring(priv, j);
 }
 return err;
}
