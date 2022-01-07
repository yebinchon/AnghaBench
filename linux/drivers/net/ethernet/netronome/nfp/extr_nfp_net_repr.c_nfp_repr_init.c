
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nfp_repr {TYPE_5__* dst; struct nfp_port* port; } ;
struct nfp_port {int dummy; } ;
struct TYPE_9__ {int major; } ;
struct TYPE_6__ {int repr_cap; } ;
struct nfp_net {TYPE_4__ fw_ver; TYPE_1__ tlv_caps; } ;
struct nfp_app {int dummy; } ;
struct net_device {int priv_flags; int hw_features; int hw_enc_features; int vlan_features; int features; int gso_max_segs; int max_mtu; int * ethtool_ops; int * netdev_ops; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int port_id; struct net_device* lower_dev; } ;
struct TYPE_8__ {TYPE_2__ port_info; } ;
struct TYPE_10__ {TYPE_3__ u; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_DISABLE_NETPOLL ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_NO_QUEUE ;
 int METADATA_HW_PORT_MUX ;
 int NETIF_F_GSO_GRE ;
 int NETIF_F_GSO_UDP_TUNNEL ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
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
 int NFP_NET_CFG_CTRL_NVGRE ;
 int NFP_NET_CFG_CTRL_RSS_ANY ;
 int NFP_NET_CFG_CTRL_RXCSUM_ANY ;
 int NFP_NET_CFG_CTRL_RXVLAN ;
 int NFP_NET_CFG_CTRL_TXCSUM ;
 int NFP_NET_CFG_CTRL_TXVLAN ;
 int NFP_NET_CFG_CTRL_VXLAN ;
 int NFP_NET_LSO_MAX_SEGS ;
 int dst_release (struct dst_entry*) ;
 TYPE_5__* metadata_dst_alloc (int ,int ,int ) ;
 void* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ nfp_app_has_tc (struct nfp_app*) ;
 int nfp_app_repr_clean (struct nfp_app*,struct net_device*) ;
 int nfp_app_repr_init (struct nfp_app*,struct net_device*) ;
 int nfp_port_ethtool_ops ;
 int nfp_repr_netdev_ops ;
 int register_netdev (struct net_device*) ;

int nfp_repr_init(struct nfp_app *app, struct net_device *netdev,
    u32 cmsg_port_id, struct nfp_port *port,
    struct net_device *pf_netdev)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_net *nn = netdev_priv(pf_netdev);
 u32 repr_cap = nn->tlv_caps.repr_cap;
 int err;

 repr->port = port;
 repr->dst = metadata_dst_alloc(0, METADATA_HW_PORT_MUX, GFP_KERNEL);
 if (!repr->dst)
  return -ENOMEM;
 repr->dst->u.port_info.port_id = cmsg_port_id;
 repr->dst->u.port_info.lower_dev = pf_netdev;

 netdev->netdev_ops = &nfp_repr_netdev_ops;
 netdev->ethtool_ops = &nfp_port_ethtool_ops;

 netdev->max_mtu = pf_netdev->max_mtu;


 if (repr_cap & NFP_NET_CFG_CTRL_LIVE_ADDR)
  netdev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

 netdev->hw_features = NETIF_F_HIGHDMA;
 if (repr_cap & NFP_NET_CFG_CTRL_RXCSUM_ANY)
  netdev->hw_features |= NETIF_F_RXCSUM;
 if (repr_cap & NFP_NET_CFG_CTRL_TXCSUM)
  netdev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 if (repr_cap & NFP_NET_CFG_CTRL_GATHER)
  netdev->hw_features |= NETIF_F_SG;
 if ((repr_cap & NFP_NET_CFG_CTRL_LSO && nn->fw_ver.major > 2) ||
     repr_cap & NFP_NET_CFG_CTRL_LSO2)
  netdev->hw_features |= NETIF_F_TSO | NETIF_F_TSO6;
 if (repr_cap & NFP_NET_CFG_CTRL_RSS_ANY)
  netdev->hw_features |= NETIF_F_RXHASH;
 if (repr_cap & NFP_NET_CFG_CTRL_VXLAN) {
  if (repr_cap & NFP_NET_CFG_CTRL_LSO)
   netdev->hw_features |= NETIF_F_GSO_UDP_TUNNEL;
 }
 if (repr_cap & NFP_NET_CFG_CTRL_NVGRE) {
  if (repr_cap & NFP_NET_CFG_CTRL_LSO)
   netdev->hw_features |= NETIF_F_GSO_GRE;
 }
 if (repr_cap & (NFP_NET_CFG_CTRL_VXLAN | NFP_NET_CFG_CTRL_NVGRE))
  netdev->hw_enc_features = netdev->hw_features;

 netdev->vlan_features = netdev->hw_features;

 if (repr_cap & NFP_NET_CFG_CTRL_RXVLAN)
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_RX;
 if (repr_cap & NFP_NET_CFG_CTRL_TXVLAN) {
  if (repr_cap & NFP_NET_CFG_CTRL_LSO2)
   netdev_warn(netdev, "Device advertises both TSO2 and TXVLAN. Refusing to enable TXVLAN.\n");
  else
   netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_TX;
 }
 if (repr_cap & NFP_NET_CFG_CTRL_CTAG_FILTER)
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;

 netdev->features = netdev->hw_features;


 netdev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
 netdev->gso_max_segs = NFP_NET_LSO_MAX_SEGS;

 netdev->priv_flags |= IFF_NO_QUEUE | IFF_DISABLE_NETPOLL;
 netdev->features |= NETIF_F_LLTX;

 if (nfp_app_has_tc(app)) {
  netdev->features |= NETIF_F_HW_TC;
  netdev->hw_features |= NETIF_F_HW_TC;
 }

 err = nfp_app_repr_init(app, netdev);
 if (err)
  goto err_clean;

 err = register_netdev(netdev);
 if (err)
  goto err_repr_clean;

 return 0;

err_repr_clean:
 nfp_app_repr_clean(app, netdev);
err_clean:
 dst_release((struct dst_entry *)repr->dst);
 return err;
}
