
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int net_dev; int mc_token; int mc_io; } ;


 int DPAA2_ETH_L2_MAX_FRM (int) ;
 int DPAA2_ETH_MFL ;
 int dpni_set_max_frame_length (int ,int ,int ,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int set_rx_mfl(struct dpaa2_eth_priv *priv, int mtu, bool has_xdp)
{
 int mfl, err;






 if (has_xdp)
  mfl = DPAA2_ETH_L2_MAX_FRM(mtu);
 else
  mfl = DPAA2_ETH_MFL;

 err = dpni_set_max_frame_length(priv->mc_io, 0, priv->mc_token, mfl);
 if (err) {
  netdev_err(priv->net_dev, "dpni_set_max_frame_length failed\n");
  return err;
 }

 return 0;
}
