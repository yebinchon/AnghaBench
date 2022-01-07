
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int net_dev; } ;


 int DPAA2_ETH_L2_MAX_FRM (int) ;
 int DPAA2_ETH_RX_BUF_SIZE ;
 int DPAA2_ETH_RX_HWA_SIZE ;
 scalar_t__ VLAN_ETH_HLEN ;
 int XDP_PACKET_HEADROOM ;
 int dpaa2_eth_rx_head_room (struct dpaa2_eth_priv*) ;
 int netdev_warn (int ,char*,scalar_t__) ;

__attribute__((used)) static bool xdp_mtu_valid(struct dpaa2_eth_priv *priv, int mtu)
{
 int mfl, linear_mfl;

 mfl = DPAA2_ETH_L2_MAX_FRM(mtu);
 linear_mfl = DPAA2_ETH_RX_BUF_SIZE - DPAA2_ETH_RX_HWA_SIZE -
       dpaa2_eth_rx_head_room(priv) - XDP_PACKET_HEADROOM;

 if (mfl > linear_mfl) {
  netdev_warn(priv->net_dev, "Maximum MTU for XDP is %d\n",
       linear_mfl - VLAN_ETH_HLEN);
  return 0;
 }

 return 1;
}
