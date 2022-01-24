#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_vmdq ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; scalar_t__ bridge_mode; int num_vfs; TYPE_4__* vfinfo; int /*<<< orphan*/  netdev; TYPE_3__* ring_feature; int /*<<< orphan*/  flags2; int /*<<< orphan*/  num_rx_pools; struct ixgbe_hw hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  rss_query_enabled; int /*<<< orphan*/  spoofchk_enabled; } ;
struct TYPE_7__ {int mask; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_MODE_VEB ; 
 int FUNC0 (int,int) ; 
#define  IXGBE_82599_VMDQ_4Q_MASK 129 
#define  IXGBE_82599_VMDQ_8Q_MASK 128 
 int /*<<< orphan*/  IXGBE_FLAG2_VLAN_PROMISC ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int /*<<< orphan*/  IXGBE_GCR_EXT ; 
 int IXGBE_GCR_EXT_VT_MODE_16 ; 
 int IXGBE_GCR_EXT_VT_MODE_32 ; 
 int IXGBE_GCR_EXT_VT_MODE_64 ; 
 int /*<<< orphan*/  IXGBE_PFDTXGSWC ; 
 int IXGBE_PFDTXGSWC_VT_LBEN ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IXGBE_VMD_CTL_VMDQ_EN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IXGBE_VMOLR_AUPE ; 
 int /*<<< orphan*/  IXGBE_VT_CTL ; 
 int IXGBE_VT_CTL_POOL_MASK ; 
 int IXGBE_VT_CTL_POOL_SHIFT ; 
 int IXGBE_VT_CTL_REPLEN ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 size_t RING_F_VMDQ ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u16 pool = adapter->num_rx_pools;
	u32 reg_offset, vf_shift, vmolr;
	u32 gcr_ext, vmdctl;
	int i;

	if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
		return;

	vmdctl = FUNC1(hw, IXGBE_VT_CTL);
	vmdctl |= IXGBE_VMD_CTL_VMDQ_EN;
	vmdctl &= ~IXGBE_VT_CTL_POOL_MASK;
	vmdctl |= FUNC6(0) << IXGBE_VT_CTL_POOL_SHIFT;
	vmdctl |= IXGBE_VT_CTL_REPLEN;
	FUNC5(hw, IXGBE_VT_CTL, vmdctl);

	/* accept untagged packets until a vlan tag is
	 * specifically set for the VMDQ queue/pool
	 */
	vmolr = IXGBE_VMOLR_AUPE;
	while (pool--)
		FUNC5(hw, FUNC4(FUNC6(pool)), vmolr);

	vf_shift = FUNC6(0) % 32;
	reg_offset = (FUNC6(0) >= 32) ? 1 : 0;

	/* Enable only the PF's pool for Tx/Rx */
	FUNC5(hw, FUNC2(reg_offset), FUNC0(31, vf_shift));
	FUNC5(hw, FUNC2(reg_offset ^ 1), reg_offset - 1);
	FUNC5(hw, FUNC3(reg_offset), FUNC0(31, vf_shift));
	FUNC5(hw, FUNC3(reg_offset ^ 1), reg_offset - 1);
	if (adapter->bridge_mode == BRIDGE_MODE_VEB)
		FUNC5(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);

	/* Map PF MAC address in RAR Entry 0 to first pool following VFs */
	hw->mac.ops.set_vmdq(hw, 0, FUNC6(0));

	/* clear VLAN promisc flag so VFTA will be updated if necessary */
	adapter->flags2 &= ~IXGBE_FLAG2_VLAN_PROMISC;

	/*
	 * Set up VF register offsets for selected VT Mode,
	 * i.e. 32 or 64 VFs for SR-IOV
	 */
	switch (adapter->ring_feature[RING_F_VMDQ].mask) {
	case IXGBE_82599_VMDQ_8Q_MASK:
		gcr_ext = IXGBE_GCR_EXT_VT_MODE_16;
		break;
	case IXGBE_82599_VMDQ_4Q_MASK:
		gcr_ext = IXGBE_GCR_EXT_VT_MODE_32;
		break;
	default:
		gcr_ext = IXGBE_GCR_EXT_VT_MODE_64;
		break;
	}

	FUNC5(hw, IXGBE_GCR_EXT, gcr_ext);

	for (i = 0; i < adapter->num_vfs; i++) {
		/* configure spoof checking */
		FUNC8(adapter->netdev, i,
					  adapter->vfinfo[i].spoofchk_enabled);

		/* Enable/Disable RSS query feature  */
		FUNC7(adapter->netdev, i,
					  adapter->vfinfo[i].rss_query_enabled);
	}
}