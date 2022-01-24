#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int flags; } ;
struct ice_vsi {int current_netdev_flags; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  vsi_num; int /*<<< orphan*/  idx; scalar_t__ vlan_ena; int /*<<< orphan*/  tmp_sync_list; int /*<<< orphan*/  tmp_unsync_list; struct net_device* netdev; struct ice_pf* back; } ;
struct TYPE_4__ {scalar_t__ sq_last_status; } ;
struct ice_hw {TYPE_2__ adminq; } ;
struct ice_pf {struct ice_hw hw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ICE_AQ_RC_ENOSPC ; 
 int ICE_ERR_ALREADY_EXISTS ; 
 int ICE_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  ICE_FLTR_RX ; 
 int /*<<< orphan*/  ICE_MCAST_PROMISC_BITS ; 
 int /*<<< orphan*/  ICE_MCAST_VLAN_PROMISC_BITS ; 
 int /*<<< orphan*/  ICE_VSI_FLAG_MMAC_FLTR_CHANGED ; 
 int /*<<< orphan*/  ICE_VSI_FLAG_PROMISC_CHANGED ; 
 int /*<<< orphan*/  ICE_VSI_FLAG_UMAC_FLTR_CHANGED ; 
 int /*<<< orphan*/  ICE_VSI_FLAG_VLAN_FLTR_CHANGED ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __ICE_CFG_BUSY ; 
 int /*<<< orphan*/  __ICE_FLTR_OVERFLOW_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ice_add_mac_to_sync_list ; 
 int /*<<< orphan*/  ice_add_mac_to_unsync_list ; 
 int FUNC5 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ice_vsi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ice_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 

__attribute__((used)) static int FUNC18(struct ice_vsi *vsi)
{
	struct device *dev = &vsi->back->pdev->dev;
	struct net_device *netdev = vsi->netdev;
	bool promisc_forced_on = false;
	struct ice_pf *pf = vsi->back;
	struct ice_hw *hw = &pf->hw;
	enum ice_status status = 0;
	u32 changed_flags = 0;
	u8 promisc_m;
	int err = 0;

	if (!vsi->netdev)
		return -EINVAL;

	while (FUNC15(__ICE_CFG_BUSY, vsi->state))
		FUNC17(1000, 2000);

	changed_flags = vsi->current_netdev_flags ^ vsi->netdev->flags;
	vsi->current_netdev_flags = vsi->netdev->flags;

	FUNC0(&vsi->tmp_sync_list);
	FUNC0(&vsi->tmp_unsync_list);

	if (FUNC9(vsi)) {
		FUNC3(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags);
		FUNC3(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags);
		FUNC3(ICE_VSI_FLAG_VLAN_FLTR_CHANGED, vsi->flags);

		/* grab the netdev's addr_list_lock */
		FUNC12(netdev);
		FUNC2(netdev, ice_add_mac_to_sync_list,
			      ice_add_mac_to_unsync_list);
		FUNC1(netdev, ice_add_mac_to_sync_list,
			      ice_add_mac_to_unsync_list);
		/* our temp lists are populated. release lock */
		FUNC13(netdev);
	}

	/* Remove MAC addresses in the unsync list */
	status = FUNC8(hw, &vsi->tmp_unsync_list);
	FUNC7(dev, &vsi->tmp_unsync_list);
	if (status) {
		FUNC10(netdev, "Failed to delete MAC filters\n");
		/* if we failed because of alloc failures, just bail */
		if (status == ICE_ERR_NO_MEMORY) {
			err = -ENOMEM;
			goto out;
		}
	}

	/* Add MAC addresses in the sync list */
	status = FUNC4(hw, &vsi->tmp_sync_list);
	FUNC7(dev, &vsi->tmp_sync_list);
	/* If filter is added successfully or already exists, do not go into
	 * 'if' condition and report it as error. Instead continue processing
	 * rest of the function.
	 */
	if (status && status != ICE_ERR_ALREADY_EXISTS) {
		FUNC10(netdev, "Failed to add MAC filters\n");
		/* If there is no more space for new umac filters, VSI
		 * should go into promiscuous mode. There should be some
		 * space reserved for promiscuous filters.
		 */
		if (hw->adminq.sq_last_status == ICE_AQ_RC_ENOSPC &&
		    !FUNC15(__ICE_FLTR_OVERFLOW_PROMISC,
				      vsi->state)) {
			promisc_forced_on = true;
			FUNC11(netdev,
				    "Reached MAC filter limit, forcing promisc mode on VSI %d\n",
				    vsi->vsi_num);
		} else {
			err = -EIO;
			goto out;
		}
	}
	/* check for changes in promiscuous modes */
	if (changed_flags & IFF_ALLMULTI) {
		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
			if (vsi->vlan_ena)
				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
			else
				promisc_m = ICE_MCAST_PROMISC_BITS;

			err = FUNC6(vsi, promisc_m, true);
			if (err) {
				FUNC10(netdev, "Error setting Multicast promiscuous mode on VSI %i\n",
					   vsi->vsi_num);
				vsi->current_netdev_flags &= ~IFF_ALLMULTI;
				goto out_promisc;
			}
		} else if (!(vsi->current_netdev_flags & IFF_ALLMULTI)) {
			if (vsi->vlan_ena)
				promisc_m = ICE_MCAST_VLAN_PROMISC_BITS;
			else
				promisc_m = ICE_MCAST_PROMISC_BITS;

			err = FUNC6(vsi, promisc_m, false);
			if (err) {
				FUNC10(netdev, "Error clearing Multicast promiscuous mode on VSI %i\n",
					   vsi->vsi_num);
				vsi->current_netdev_flags |= IFF_ALLMULTI;
				goto out_promisc;
			}
		}
	}

	if (((changed_flags & IFF_PROMISC) || promisc_forced_on) ||
	    FUNC16(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags)) {
		FUNC3(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags);
		if (vsi->current_netdev_flags & IFF_PROMISC) {
			/* Apply Rx filter rule to get traffic from wire */
			status = FUNC5(hw, vsi->idx, true,
						  ICE_FLTR_RX);
			if (status) {
				FUNC10(netdev, "Error setting default VSI %i Rx rule\n",
					   vsi->vsi_num);
				vsi->current_netdev_flags &= ~IFF_PROMISC;
				err = -EIO;
				goto out_promisc;
			}
		} else {
			/* Clear Rx filter to remove traffic from wire */
			status = FUNC5(hw, vsi->idx, false,
						  ICE_FLTR_RX);
			if (status) {
				FUNC10(netdev, "Error clearing default VSI %i Rx rule\n",
					   vsi->vsi_num);
				vsi->current_netdev_flags |= IFF_PROMISC;
				err = -EIO;
				goto out_promisc;
			}
		}
	}
	goto exit;

out_promisc:
	FUNC14(ICE_VSI_FLAG_PROMISC_CHANGED, vsi->flags);
	goto exit;
out:
	/* if something went wrong then set the changed flag so we try again */
	FUNC14(ICE_VSI_FLAG_UMAC_FLTR_CHANGED, vsi->flags);
	FUNC14(ICE_VSI_FLAG_MMAC_FLTR_CHANGED, vsi->flags);
exit:
	FUNC3(__ICE_CFG_BUSY, vsi->state);
	return err;
}