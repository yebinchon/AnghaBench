
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {int dev; int * rx; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;


 int drv ;
 int gve_adminq_create_rx_queue (struct gve_priv*,int) ;
 int gve_adminq_create_tx_queue (struct gve_priv*,int) ;
 int gve_rx_write_doorbell (struct gve_priv*,int *) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,int) ;
 int netif_err (struct gve_priv*,int ,int ,char*,int) ;

__attribute__((used)) static int gve_create_rings(struct gve_priv *priv)
{
 int err;
 int i;

 for (i = 0; i < priv->tx_cfg.num_queues; i++) {
  err = gve_adminq_create_tx_queue(priv, i);
  if (err) {
   netif_err(priv, drv, priv->dev, "failed to create tx queue %d\n",
      i);



   return err;
  }
  netif_dbg(priv, drv, priv->dev, "created tx queue %d\n", i);
 }
 for (i = 0; i < priv->rx_cfg.num_queues; i++) {
  err = gve_adminq_create_rx_queue(priv, i);
  if (err) {
   netif_err(priv, drv, priv->dev, "failed to create rx queue %d\n",
      i);



   return err;
  }





  gve_rx_write_doorbell(priv, &priv->rx[i]);
  netif_dbg(priv, drv, priv->dev, "created rx queue %d\n", i);
 }

 return 0;
}
