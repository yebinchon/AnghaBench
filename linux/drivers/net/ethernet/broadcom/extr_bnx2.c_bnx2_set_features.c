
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int vlan_features; int hw_features; int features; } ;
struct bnx2 {int rx_mode; } ;
typedef int netdev_features_t ;


 int BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE ;
 int BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG ;
 int NETIF_F_ALL_TSO ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int bnx2_fw_sync (struct bnx2*,int ,int ,int) ;
 int bnx2_netif_start (struct bnx2*,int) ;
 int bnx2_netif_stop (struct bnx2*,int) ;
 int bnx2_set_rx_mode (struct net_device*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
bnx2_set_features(struct net_device *dev, netdev_features_t features)
{
 struct bnx2 *bp = netdev_priv(dev);


 if (features & NETIF_F_HW_VLAN_CTAG_TX)
  dev->vlan_features |= (dev->hw_features & NETIF_F_ALL_TSO);
 else
  dev->vlan_features &= ~NETIF_F_ALL_TSO;

 if ((!!(features & NETIF_F_HW_VLAN_CTAG_RX) !=
     !!(bp->rx_mode & BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG)) &&
     netif_running(dev)) {
  bnx2_netif_stop(bp, 0);
  dev->features = features;
  bnx2_set_rx_mode(dev);
  bnx2_fw_sync(bp, BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE, 0, 1);
  bnx2_netif_start(bp, 0);
  return 1;
 }

 return 0;
}
