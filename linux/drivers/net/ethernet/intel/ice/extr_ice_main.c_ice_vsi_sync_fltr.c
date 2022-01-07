
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int flags; } ;
struct ice_vsi {int current_netdev_flags; int state; int flags; int vsi_num; int idx; scalar_t__ vlan_ena; int tmp_sync_list; int tmp_unsync_list; struct net_device* netdev; struct ice_pf* back; } ;
struct TYPE_4__ {scalar_t__ sq_last_status; } ;
struct ice_hw {TYPE_2__ adminq; } ;
struct ice_pf {struct ice_hw hw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ ICE_AQ_RC_ENOSPC ;
 int ICE_ERR_ALREADY_EXISTS ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_FLTR_RX ;
 int ICE_MCAST_PROMISC_BITS ;
 int ICE_MCAST_VLAN_PROMISC_BITS ;
 int ICE_VSI_FLAG_MMAC_FLTR_CHANGED ;
 int ICE_VSI_FLAG_PROMISC_CHANGED ;
 int ICE_VSI_FLAG_UMAC_FLTR_CHANGED ;
 int ICE_VSI_FLAG_VLAN_FLTR_CHANGED ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int INIT_LIST_HEAD (int *) ;
 int __ICE_CFG_BUSY ;
 int __ICE_FLTR_OVERFLOW_PROMISC ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int clear_bit (int ,int ) ;
 int ice_add_mac (struct ice_hw*,int *) ;
 int ice_add_mac_to_sync_list ;
 int ice_add_mac_to_unsync_list ;
 int ice_cfg_dflt_vsi (struct ice_hw*,int ,int,int ) ;
 int ice_cfg_promisc (struct ice_vsi*,int ,int) ;
 int ice_free_fltr_list (struct device*,int *) ;
 int ice_remove_mac (struct ice_hw*,int *) ;
 scalar_t__ ice_vsi_fltr_changed (struct ice_vsi*) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_warn (struct net_device*,char*,int ) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
{
 struct device *dev = &vsi->back->pdev->dev;
 struct net_device *netdev = vsi->netdev;
 bool promisc_forced_on = 0;
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 enum ice_status status = 0;
 u32 changed_flags = 0;
 u8 promisc_m;
 int err = 0;

 if (!vsi->netdev)
  return -EINVAL;

 while (test_and_set_bit(__ICE_CFG_BUSY, vsi->state))
  usleep_range(1000, 2000);

 changed_flags = vsi->current_netdev_flags ^ vsi->netdev->flags;
 vsi->current_netdev_flags = vsi->netdev->flags;

 INIT_LIST_HEAD(&vsi->tmp_sync_list);
 INIT_LIST_HEAD(&vsi->tmp_unsync_list);

 if (ice_vsi_fltr_changed(vsi)) {
  clear_bit(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags);
  clear_bit(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags);
  clear_bit(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);


  netif_addr_lock_bh(netdev);
  __dev_uc_sync(netdev, ice_add_mac_to_sync_list,
         ice_add_mac_to_unsync_list);
  __dev_mc_sync(netdev, ice_add_mac_to_sync_list,
         ice_add_mac_to_unsync_list);

  netif_addr_unlock_bh(netdev);
 }


 status = ice_remove_mac(hw, &vsi->tmp_unsync_list);
 ice_free_fltr_list(dev, &vsi->tmp_unsync_list);
 if (status) {
  netdev_err(netdev, "Failed to delete MAC filters\n");

  if (status == ICE_ERR_NO_MEMORY) {
   err = -ENOMEM;
   goto out;
  }
 }


 status = ice_add_mac(hw, &vsi->tmp_sync_list);
 ice_free_fltr_list(dev, &vsi->tmp_sync_list);




 if (status && status != ICE_ERR_ALREADY_EXISTS) {
  netdev_err(netdev, "Failed to add MAC filters\n");




  if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOSPC &&
      !test_and_set_bit(__ICE_FLTR_OVERFLOW_PROMISC,
          vsi->state)) {
   promisc_forced_on = 1;
   netdev_warn(netdev,
        "Reached MAC filter limit, forcing promisc mode on VSI %d\n",
        vsi->vsi_num);
  } else {
   err = -EIO;
   goto out;
  }
 }

 if (changed_flags & IFF_ALLMULTI) {
  if (vsi->current_netdev_flags & IFF_ALLMULTI) {
   if (vsi->vlan_ena)
    promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
   else
    promisc_m = ICE_MCAST_PROMISC_BITS;

   err = ice_cfg_promisc(vsi, promisc_m, 1);
   if (err) {
    netdev_err(netdev, "Error setting Multicast promiscuous mode on VSI %i\n",
        vsi->vsi_num);
    vsi->current_netdev_flags &= ~IFF_ALLMULTI;
    goto out_promisc;
   }
  } else if (!(vsi->current_netdev_flags & IFF_ALLMULTI)) {
   if (vsi->vlan_ena)
    promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
   else
    promisc_m = ICE_MCAST_PROMISC_BITS;

   err = ice_cfg_promisc(vsi, promisc_m, 0);
   if (err) {
    netdev_err(netdev, "Error clearing Multicast promiscuous mode on VSI %i\n",
        vsi->vsi_num);
    vsi->current_netdev_flags |= IFF_ALLMULTI;
    goto out_promisc;
   }
  }
 }

 if (((changed_flags & IFF_PROMISC) || promisc_forced_on) ||
     test_bit(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags)) {
  clear_bit(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags);
  if (vsi->current_netdev_flags & IFF_PROMISC) {

   status = ice_cfg_dflt_vsi(hw, vsi->idx, 1,
        ICE_FLTR_RX);
   if (status) {
    netdev_err(netdev, "Error setting default VSI %i Rx rule\n",
        vsi->vsi_num);
    vsi->current_netdev_flags &= ~IFF_PROMISC;
    err = -EIO;
    goto out_promisc;
   }
  } else {

   status = ice_cfg_dflt_vsi(hw, vsi->idx, 0,
        ICE_FLTR_RX);
   if (status) {
    netdev_err(netdev, "Error clearing default VSI %i Rx rule\n",
        vsi->vsi_num);
    vsi->current_netdev_flags |= IFF_PROMISC;
    err = -EIO;
    goto out_promisc;
   }
  }
 }
 goto exit;

out_promisc:
 set_bit(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags);
 goto exit;
out:

 set_bit(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags);
 set_bit(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags);
exit:
 clear_bit(__ICE_CFG_BUSY, vsi->state);
 return err;
}
