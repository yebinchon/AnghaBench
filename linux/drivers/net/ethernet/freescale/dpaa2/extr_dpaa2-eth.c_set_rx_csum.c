
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int net_dev; int mc_token; int mc_io; } ;


 int DPNI_OFF_RX_L3_CSUM ;
 int DPNI_OFF_RX_L4_CSUM ;
 int dpni_set_offload (int ,int ,int ,int ,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int set_rx_csum(struct dpaa2_eth_priv *priv, bool enable)
{
 int err;

 err = dpni_set_offload(priv->mc_io, 0, priv->mc_token,
          DPNI_OFF_RX_L3_CSUM, enable);
 if (err) {
  netdev_err(priv->net_dev,
      "dpni_set_offload(RX_L3_CSUM) failed\n");
  return err;
 }

 err = dpni_set_offload(priv->mc_io, 0, priv->mc_token,
          DPNI_OFF_RX_L4_CSUM, enable);
 if (err) {
  netdev_err(priv->net_dev,
      "dpni_set_offload(RX_L4_CSUM) failed\n");
  return err;
 }

 return 0;
}
