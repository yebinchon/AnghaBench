
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctrl; int mtu; struct net_device* netdev; } ;
struct TYPE_3__ {int major; } ;
struct nfp_net {int cap; int max_mtu; TYPE_2__ dp; scalar_t__ port; int app; TYPE_1__ fw_ver; } ;
struct net_device {int hw_features; int hw_enc_features; int vlan_features; int features; int gso_max_segs; int max_mtu; int min_mtu; int watchdog_timeo; int * netdev_ops; int priv_flags; int mtu; int dev_addr; } ;


 int ETH_MIN_MTU ;
 int IFF_LIVE_ADDR_CHANGE ;
 int NETIF_F_GSO_GRE ;
 int NETIF_F_GSO_UDP_TUNNEL ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NFP_NET_CFG_CTRL_CTAG_FILTER ;
 int NFP_NET_CFG_CTRL_GATHER ;
 int NFP_NET_CFG_CTRL_LIVE_ADDR ;
 int NFP_NET_CFG_CTRL_LSO ;
 int NFP_NET_CFG_CTRL_LSO2 ;
 int NFP_NET_CFG_CTRL_LSO_ANY ;
 int NFP_NET_CFG_CTRL_NVGRE ;
 int NFP_NET_CFG_CTRL_RSS_ANY ;
 int NFP_NET_CFG_CTRL_RXCSUM_ANY ;
 int NFP_NET_CFG_CTRL_RXVLAN ;
 int NFP_NET_CFG_CTRL_TXCSUM ;
 int NFP_NET_CFG_CTRL_TXVLAN ;
 int NFP_NET_CFG_CTRL_VXLAN ;
 int NFP_NET_LSO_MAX_SEGS ;
 int msecs_to_jiffies (int) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ nfp_app_has_tc (int ) ;
 int nfp_net_netdev_ops ;
 int nfp_net_set_ethtool_ops (struct net_device*) ;
 int nfp_net_write_mac_addr (struct nfp_net*,int ) ;
 int nn_warn (struct nfp_net*,char*) ;

__attribute__((used)) static void nfp_net_netdev_init(struct nfp_net *nn)
{
 struct net_device *netdev = nn->dp.netdev;

 nfp_net_write_mac_addr(nn, nn->dp.netdev->dev_addr);

 netdev->mtu = nn->dp.mtu;







 if (nn->cap & NFP_NET_CFG_CTRL_LIVE_ADDR)
  netdev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

 netdev->hw_features = NETIF_F_HIGHDMA;
 if (nn->cap & NFP_NET_CFG_CTRL_RXCSUM_ANY) {
  netdev->hw_features |= NETIF_F_RXCSUM;
  nn->dp.ctrl |= nn->cap & NFP_NET_CFG_CTRL_RXCSUM_ANY;
 }
 if (nn->cap & NFP_NET_CFG_CTRL_TXCSUM) {
  netdev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_TXCSUM;
 }
 if (nn->cap & NFP_NET_CFG_CTRL_GATHER) {
  netdev->hw_features |= NETIF_F_SG;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_GATHER;
 }
 if ((nn->cap & NFP_NET_CFG_CTRL_LSO && nn->fw_ver.major > 2) ||
     nn->cap & NFP_NET_CFG_CTRL_LSO2) {
  netdev->hw_features |= NETIF_F_TSO | NETIF_F_TSO6;
  nn->dp.ctrl |= nn->cap & NFP_NET_CFG_CTRL_LSO2 ?:
      NFP_NET_CFG_CTRL_LSO;
 }
 if (nn->cap & NFP_NET_CFG_CTRL_RSS_ANY)
  netdev->hw_features |= NETIF_F_RXHASH;
 if (nn->cap & NFP_NET_CFG_CTRL_VXLAN) {
  if (nn->cap & NFP_NET_CFG_CTRL_LSO)
   netdev->hw_features |= NETIF_F_GSO_UDP_TUNNEL;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_VXLAN;
 }
 if (nn->cap & NFP_NET_CFG_CTRL_NVGRE) {
  if (nn->cap & NFP_NET_CFG_CTRL_LSO)
   netdev->hw_features |= NETIF_F_GSO_GRE;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_NVGRE;
 }
 if (nn->cap & (NFP_NET_CFG_CTRL_VXLAN | NFP_NET_CFG_CTRL_NVGRE))
  netdev->hw_enc_features = netdev->hw_features;

 netdev->vlan_features = netdev->hw_features;

 if (nn->cap & NFP_NET_CFG_CTRL_RXVLAN) {
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_RXVLAN;
 }
 if (nn->cap & NFP_NET_CFG_CTRL_TXVLAN) {
  if (nn->cap & NFP_NET_CFG_CTRL_LSO2) {
   nn_warn(nn, "Device advertises both TSO2 and TXVLAN. Refusing to enable TXVLAN.\n");
  } else {
   netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
   nn->dp.ctrl |= NFP_NET_CFG_CTRL_TXVLAN;
  }
 }
 if (nn->cap & NFP_NET_CFG_CTRL_CTAG_FILTER) {
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
  nn->dp.ctrl |= NFP_NET_CFG_CTRL_CTAG_FILTER;
 }

 netdev->features = netdev->hw_features;

 if (nfp_app_has_tc(nn->app) && nn->port)
  netdev->hw_features |= NETIF_F_HW_TC;


 netdev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
 nn->dp.ctrl &= ~NFP_NET_CFG_CTRL_LSO_ANY;


 netdev->netdev_ops = &nfp_net_netdev_ops;
 netdev->watchdog_timeo = msecs_to_jiffies(5 * 1000);


 netdev->min_mtu = ETH_MIN_MTU;
 netdev->max_mtu = nn->max_mtu;

 netdev->gso_max_segs = NFP_NET_LSO_MAX_SEGS;

 netif_carrier_off(netdev);

 nfp_net_set_ethtool_ops(netdev);
}
