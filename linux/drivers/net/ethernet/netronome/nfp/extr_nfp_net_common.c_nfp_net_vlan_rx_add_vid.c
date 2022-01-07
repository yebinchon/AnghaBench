
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ETH_P_8021Q ;
 int NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD ;
 scalar_t__ NFP_NET_CFG_VLAN_FILTER_PROTO ;
 int NFP_NET_CFG_VLAN_FILTER_SZ ;
 scalar_t__ NFP_NET_CFG_VLAN_FILTER_VID ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_net_mbox_lock (struct nfp_net*,int ) ;
 int nfp_net_mbox_reconfig_and_unlock (struct nfp_net*,int const) ;
 int nn_writew (struct nfp_net*,scalar_t__,int ) ;

__attribute__((used)) static int
nfp_net_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 const u32 cmd = NFP_NET_CFG_MBOX_CMD_CTAG_FILTER_ADD;
 struct nfp_net *nn = netdev_priv(netdev);
 int err;




 if (!vid)
  return 0;

 err = nfp_net_mbox_lock(nn, NFP_NET_CFG_VLAN_FILTER_SZ);
 if (err)
  return err;

 nn_writew(nn, nn->tlv_caps.mbox_off + NFP_NET_CFG_VLAN_FILTER_VID, vid);
 nn_writew(nn, nn->tlv_caps.mbox_off + NFP_NET_CFG_VLAN_FILTER_PROTO,
    ETH_P_8021Q);

 return nfp_net_mbox_reconfig_and_unlock(nn, cmd);
}
