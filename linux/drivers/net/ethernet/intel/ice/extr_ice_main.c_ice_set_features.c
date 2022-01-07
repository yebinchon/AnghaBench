
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int features; } ;
struct ice_vsi {TYPE_2__* back; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXHASH ;
 int dev_err (int *,char*) ;
 int ice_cfg_vlan_pruning (struct ice_vsi*,int,int) ;
 scalar_t__ ice_is_safe_mode (TYPE_2__*) ;
 int ice_vsi_manage_rss_lut (struct ice_vsi*,int) ;
 int ice_vsi_manage_vlan_insertion (struct ice_vsi*) ;
 int ice_vsi_manage_vlan_stripping (struct ice_vsi*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ice_set_features(struct net_device *netdev, netdev_features_t features)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 int ret = 0;


 if (ice_is_safe_mode(vsi->back)) {
  dev_err(&vsi->back->pdev->dev,
   "Device is in Safe Mode - not enabling advanced netdev features\n");
  return ret;
 }




 if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
  ret = ice_vsi_manage_rss_lut(vsi, 1);
 else if (!(features & NETIF_F_RXHASH) &&
   netdev->features & NETIF_F_RXHASH)
  ret = ice_vsi_manage_rss_lut(vsi, 0);

 if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
     !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
  ret = ice_vsi_manage_vlan_stripping(vsi, 1);
 else if (!(features & NETIF_F_HW_VLAN_CTAG_RX) &&
   (netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
  ret = ice_vsi_manage_vlan_stripping(vsi, 0);

 if ((features & NETIF_F_HW_VLAN_CTAG_TX) &&
     !(netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
  ret = ice_vsi_manage_vlan_insertion(vsi);
 else if (!(features & NETIF_F_HW_VLAN_CTAG_TX) &&
   (netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
  ret = ice_vsi_manage_vlan_insertion(vsi);

 if ((features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
     !(netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
  ret = ice_cfg_vlan_pruning(vsi, 1, 0);
 else if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
   (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
  ret = ice_cfg_vlan_pruning(vsi, 0, 0);

 return ret;
}
