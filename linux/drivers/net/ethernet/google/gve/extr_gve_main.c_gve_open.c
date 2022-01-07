
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;


 int gve_alloc_qpls (struct gve_priv*) ;
 int gve_alloc_rings (struct gve_priv*) ;
 int gve_create_rings (struct gve_priv*) ;
 int gve_free_qpls (struct gve_priv*) ;
 int gve_free_rings (struct gve_priv*) ;
 scalar_t__ gve_get_reset_in_progress (struct gve_priv*) ;
 int gve_register_qpls (struct gve_priv*) ;
 int gve_reset_and_teardown (struct gve_priv*,int) ;
 int gve_reset_recovery (struct gve_priv*,int) ;
 int gve_set_device_rings_ok (struct gve_priv*) ;
 int gve_turnup (struct gve_priv*) ;
 struct gve_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;

__attribute__((used)) static int gve_open(struct net_device *dev)
{
 struct gve_priv *priv = netdev_priv(dev);
 int err;

 err = gve_alloc_qpls(priv);
 if (err)
  return err;
 err = gve_alloc_rings(priv);
 if (err)
  goto free_qpls;

 err = netif_set_real_num_tx_queues(dev, priv->tx_cfg.num_queues);
 if (err)
  goto free_rings;
 err = netif_set_real_num_rx_queues(dev, priv->rx_cfg.num_queues);
 if (err)
  goto free_rings;

 err = gve_register_qpls(priv);
 if (err)
  goto reset;
 err = gve_create_rings(priv);
 if (err)
  goto reset;
 gve_set_device_rings_ok(priv);

 gve_turnup(priv);
 netif_carrier_on(dev);
 return 0;

free_rings:
 gve_free_rings(priv);
free_qpls:
 gve_free_qpls(priv);
 return err;

reset:



 if (gve_get_reset_in_progress(priv))
  return err;

 gve_reset_and_teardown(priv, 1);

 gve_reset_recovery(priv, 0);

 return err;
}
