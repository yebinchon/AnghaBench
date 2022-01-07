
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; } ;


 int disable_ch_napi (struct dpaa2_eth_priv*) ;
 int dpni_disable (int ,int ,int ) ;
 int dpni_is_enabled (int ,int ,int ,int*) ;
 int drain_pool (struct dpaa2_eth_priv*) ;
 int msleep (int) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int wait_for_egress_fq_empty (struct dpaa2_eth_priv*) ;
 int wait_for_ingress_fq_empty (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int dpaa2_eth_stop(struct net_device *net_dev)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 int dpni_enabled = 0;
 int retries = 10;

 netif_tx_stop_all_queues(net_dev);
 netif_carrier_off(net_dev);
 wait_for_egress_fq_empty(priv);

 do {
  dpni_disable(priv->mc_io, 0, priv->mc_token);
  dpni_is_enabled(priv->mc_io, 0, priv->mc_token, &dpni_enabled);
  if (dpni_enabled)

   msleep(100);
 } while (dpni_enabled && --retries);
 if (!retries) {
  netdev_warn(net_dev, "Retry count exceeded disabling DPNI\n");



 }

 wait_for_ingress_fq_empty(priv);
 disable_ch_napi(priv);


 drain_pool(priv);

 return 0;
}
