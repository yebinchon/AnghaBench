#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBE_ERR_PARAM ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IXGBE_VLVF_VIEN ; 
 int /*<<< orphan*/  IXGBE_VT_CTL ; 
 int IXGBE_VT_CTL_VT_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ixgbe_hw*,int,int) ; 

s32 FUNC7(struct ixgbe_hw *hw, u32 vlan, u32 vind,
			   bool vlan_on, bool vlvf_bypass)
{
	u32 regidx, vfta_delta, vfta, bits;
	s32 vlvf_index;

	if ((vlan > 4095) || (vind > 63))
		return IXGBE_ERR_PARAM;

	/*
	 * this is a 2 part operation - first the VFTA, then the
	 * VLVF and VLVFB if VT Mode is set
	 * We don't write the VFTA until we know the VLVF part succeeded.
	 */

	/* Part 1
	 * The VFTA is a bitstring made up of 128 32-bit registers
	 * that enable the particular VLAN id, much like the MTA:
	 *    bits[11-5]: which register
	 *    bits[4-0]:  which bit in the register
	 */
	regidx = vlan / 32;
	vfta_delta = FUNC0(vlan % 32);
	vfta = FUNC1(hw, FUNC2(regidx));

	/* vfta_delta represents the difference between the current value
	 * of vfta and the value we want in the register.  Since the diff
	 * is an XOR mask we can just update vfta using an XOR.
	 */
	vfta_delta &= vlan_on ? ~vfta : vfta;
	vfta ^= vfta_delta;

	/* Part 2
	 * If VT Mode is set
	 *   Either vlan_on
	 *     make sure the vlan is in VLVF
	 *     set the vind bit in the matching VLVFB
	 *   Or !vlan_on
	 *     clear the pool bit and possibly the vind
	 */
	if (!(FUNC1(hw, IXGBE_VT_CTL) & IXGBE_VT_CTL_VT_ENABLE))
		goto vfta_update;

	vlvf_index = FUNC6(hw, vlan, vlvf_bypass);
	if (vlvf_index < 0) {
		if (vlvf_bypass)
			goto vfta_update;
		return vlvf_index;
	}

	bits = FUNC1(hw, FUNC4(vlvf_index * 2 + vind / 32));

	/* set the pool bit */
	bits |= FUNC0(vind % 32);
	if (vlan_on)
		goto vlvf_update;

	/* clear the pool bit */
	bits ^= FUNC0(vind % 32);

	if (!bits &&
	    !FUNC1(hw, FUNC4(vlvf_index * 2 + 1 - vind / 32))) {
		/* Clear VFTA first, then disable VLVF.  Otherwise
		 * we run the risk of stray packets leaking into
		 * the PF via the default pool
		 */
		if (vfta_delta)
			FUNC5(hw, FUNC2(regidx), vfta);

		/* disable VLVF and clear remaining bit from pool */
		FUNC5(hw, FUNC3(vlvf_index), 0);
		FUNC5(hw, FUNC4(vlvf_index * 2 + vind / 32), 0);

		return 0;
	}

	/* If there are still bits set in the VLVFB registers
	 * for the VLAN ID indicated we need to see if the
	 * caller is requesting that we clear the VFTA entry bit.
	 * If the caller has requested that we clear the VFTA
	 * entry bit but there are still pools/VFs using this VLAN
	 * ID entry then ignore the request.  We're not worried
	 * about the case where we're turning the VFTA VLAN ID
	 * entry bit on, only when requested to turn it off as
	 * there may be multiple pools and/or VFs using the
	 * VLAN ID entry.  In that case we cannot clear the
	 * VFTA bit until all pools/VFs using that VLAN ID have also
	 * been cleared.  This will be indicated by "bits" being
	 * zero.
	 */
	vfta_delta = 0;

vlvf_update:
	/* record pool change and enable VLAN ID if not already enabled */
	FUNC5(hw, FUNC4(vlvf_index * 2 + vind / 32), bits);
	FUNC5(hw, FUNC3(vlvf_index), IXGBE_VLVF_VIEN | vlan);

vfta_update:
	/* Update VFTA now that we are ready for traffic */
	if (vfta_delta)
		FUNC5(hw, FUNC2(regidx), vfta);

	return 0;
}