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
typedef  size_t u32 ;
struct vf_data_storage {int /*<<< orphan*/  vf_api; int /*<<< orphan*/  vf_mac_addresses; scalar_t__ num_vf_mc_hashes; scalar_t__ spoofchk_enabled; int /*<<< orphan*/  pf_vlan; scalar_t__ pf_qos; } ;
struct ixgbe_ring_feature {int /*<<< orphan*/  mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_mac_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;int /*<<< orphan*/  (* set_vlan_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct vf_data_storage* vfinfo; int /*<<< orphan*/  netdev; scalar_t__ default_up; int /*<<< orphan*/  hw_tcs; struct ixgbe_ring_feature* ring_feature; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 size_t FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 size_t IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 size_t RING_F_VMDQ ; 
 size_t FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*,size_t) ; 
 int /*<<< orphan*/  ixgbe_mbox_api_10 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_adapter*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_hw*,int,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int,size_t) ; 

__attribute__((used)) static inline void FUNC16(struct ixgbe_adapter *adapter, u32 vf)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
	u32 q_per_pool = FUNC4(1, ~vmdq->mask);
	u8 num_tcs = adapter->hw_tcs;
	u32 reg_val;
	u32 queue;

	/* remove VLAN filters beloning to this VF */
	FUNC5(adapter, vf);

	/* add back PF assigned VLAN or VLAN 0 */
	FUNC11(adapter, true, vfinfo->pf_vlan, vf);

	/* reset offloads to defaults */
	FUNC12(hw, vf, !vfinfo->pf_vlan);

	/* set outgoing tags for VFs */
	if (!vfinfo->pf_vlan && !vfinfo->pf_qos && !num_tcs) {
		FUNC6(adapter, vf);
	} else {
		if (vfinfo->pf_qos || !num_tcs)
			FUNC13(adapter, vfinfo->pf_vlan,
					vfinfo->pf_qos, vf);
		else
			FUNC13(adapter, vfinfo->pf_vlan,
					adapter->default_up, vf);

		if (vfinfo->spoofchk_enabled) {
			hw->mac.ops.set_vlan_anti_spoofing(hw, true, vf);
			hw->mac.ops.set_mac_anti_spoofing(hw, true, vf);
		}
	}

	/* reset multicast table array for vf */
	adapter->vfinfo[vf].num_vf_mc_hashes = 0;

	/* clear any ipsec table info */
	FUNC8(adapter, vf);

	/* Flush and reset the mta with the new values */
	FUNC9(adapter->netdev);

	FUNC7(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
	FUNC10(adapter, vf, 0, NULL);

	/* reset VF api back to unknown */
	adapter->vfinfo[vf].vf_api = ixgbe_mbox_api_10;

	/* Restart each queue for given VF */
	for (queue = 0; queue < q_per_pool; queue++) {
		unsigned int reg_idx = (vf * q_per_pool) + queue;

		reg_val = FUNC1(hw, FUNC0(reg_idx));

		/* Re-enabling only configured queues */
		if (reg_val) {
			reg_val |= IXGBE_TXDCTL_ENABLE;
			FUNC3(hw, FUNC0(reg_idx), reg_val);
			reg_val &= ~IXGBE_TXDCTL_ENABLE;
			FUNC3(hw, FUNC0(reg_idx), reg_val);
		}
	}

	FUNC2(hw);
}