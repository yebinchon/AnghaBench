
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; int bpid; TYPE_1__* dpbp_dev; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {TYPE_2__ obj_desc; } ;


 int disable_ch_napi (struct dpaa2_eth_priv*) ;
 int dpni_enable (int ,int ,int ) ;
 int drain_pool (struct dpaa2_eth_priv*) ;
 int enable_ch_napi (struct dpaa2_eth_priv*) ;
 int link_state_update (struct dpaa2_eth_priv*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int seed_pool (struct dpaa2_eth_priv*,int ) ;

__attribute__((used)) static int dpaa2_eth_open(struct net_device *net_dev)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 int err;

 err = seed_pool(priv, priv->bpid);
 if (err) {




  netdev_err(net_dev, "Buffer seeding failed for DPBP %d (bpid=%d)\n",
      priv->dpbp_dev->obj_desc.id, priv->bpid);
 }





 netif_tx_stop_all_queues(net_dev);
 enable_ch_napi(priv);




 netif_carrier_off(net_dev);

 err = dpni_enable(priv->mc_io, 0, priv->mc_token);
 if (err < 0) {
  netdev_err(net_dev, "dpni_enable() failed\n");
  goto enable_err;
 }




 err = link_state_update(priv);
 if (err < 0) {
  netdev_err(net_dev, "Can't update link state\n");
  goto link_state_err;
 }

 return 0;

link_state_err:
enable_err:
 disable_ch_napi(priv);
 drain_pool(priv);
 return err;
}
