
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_queues; } ;
struct TYPE_4__ {int num_queues; } ;
struct gve_priv {int dev; TYPE_1__ rx_cfg; TYPE_2__ tx_cfg; } ;


 int drv ;
 int gve_adminq_destroy_rx_queue (struct gve_priv*,int) ;
 int gve_adminq_destroy_tx_queue (struct gve_priv*,int) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,int) ;
 int netif_err (struct gve_priv*,int ,int ,char*,int) ;

__attribute__((used)) static int gve_destroy_rings(struct gve_priv *priv)
{
 int err;
 int i;

 for (i = 0; i < priv->tx_cfg.num_queues; i++) {
  err = gve_adminq_destroy_tx_queue(priv, i);
  if (err) {
   netif_err(priv, drv, priv->dev,
      "failed to destroy tx queue %d\n",
      i);



   return err;
  }
  netif_dbg(priv, drv, priv->dev, "destroyed tx queue %d\n", i);
 }
 for (i = 0; i < priv->rx_cfg.num_queues; i++) {
  err = gve_adminq_destroy_rx_queue(priv, i);
  if (err) {
   netif_err(priv, drv, priv->dev,
      "failed to destroy rx queue %d\n",
      i);



   return err;
  }
  netif_dbg(priv, drv, priv->dev, "destroyed rx queue %d\n", i);
 }
 return 0;
}
