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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int total_vfs; int num_vfs; int num_pools; } ;
struct TYPE_3__ {int default_vid; } ;
struct fm10k_hw {TYPE_2__ iov; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FM10K_ITR_REG_COUNT ; 
 int FM10K_ITR_REG_COUNT_PF ; 
 int FM10K_MAX_QUEUES_PF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FM10K_RXDCTL_DROP_ON_EMPTY ; 
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FM10K_RXQCTL_PF ; 
 int FM10K_RXQCTL_VF ; 
 int FM10K_RXQCTL_VF_SHIFT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FM10K_TC_CREDIT_CREDIT_MASK ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FM10K_TQMAP_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FM10K_TXQCTL_PF ; 
 int FM10K_TXQCTL_TC_SHIFT ; 
 int FM10K_TXQCTL_UNLIMITED_BW ; 
 int FM10K_TXQCTL_VF ; 
 int FM10K_TXQCTL_VID_SHIFT ; 
 int FM10K_VFMBMEM_LEN ; 
 int FUNC12 (struct fm10k_hw*) ; 
 int FUNC13 (struct fm10k_hw*) ; 
 int FUNC14 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct fm10k_hw*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC17(struct fm10k_hw *hw, u16 num_vfs,
					 u16 num_pools)
{
	u16 qmap_stride, qpp, vpp, vf_q_idx, vf_q_idx0, qmap_idx;
	u32 vid = hw->mac.default_vid << FM10K_TXQCTL_VID_SHIFT;
	int i, j;

	/* hardware only supports up to 64 pools */
	if (num_pools > 64)
		return FM10K_ERR_PARAM;

	/* the number of VFs cannot exceed the number of pools */
	if ((num_vfs > num_pools) || (num_vfs > hw->iov.total_vfs))
		return FM10K_ERR_PARAM;

	/* record number of virtualization entities */
	hw->iov.num_vfs = num_vfs;
	hw->iov.num_pools = num_pools;

	/* determine qmap offsets and counts */
	qmap_stride = (num_vfs > 8) ? 32 : 256;
	qpp = FUNC12(hw);
	vpp = FUNC13(hw);

	/* calculate starting index for queues */
	vf_q_idx = FUNC14(hw, 0);
	qmap_idx = 0;

	/* establish TCs with -1 credits and no quanta to prevent transmit */
	for (i = 0; i < num_vfs; i++) {
		FUNC16(hw, FUNC7(i), 0);
		FUNC16(hw, FUNC8(i), 0);
		FUNC16(hw, FUNC6(i),
				FM10K_TC_CREDIT_CREDIT_MASK);
	}

	/* zero out all mbmem registers */
	for (i = FM10K_VFMBMEM_LEN * num_vfs; i--;)
		FUNC16(hw, FUNC1(i), 0);

	/* clear event notification of VF FLR */
	FUNC16(hw, FUNC2(0), ~0);
	FUNC16(hw, FUNC2(1), ~0);

	/* loop through unallocated rings assigning them back to PF */
	for (i = FM10K_MAX_QUEUES_PF; i < vf_q_idx; i++) {
		FUNC16(hw, FUNC10(i), 0);
		FUNC16(hw, FUNC11(i), FM10K_TXQCTL_PF |
				FM10K_TXQCTL_UNLIMITED_BW | vid);
		FUNC16(hw, FUNC5(i), FM10K_RXQCTL_PF);
	}

	/* PF should have already updated VFITR2[0] */

	/* update all ITR registers to flow to VFITR2[0] */
	for (i = FM10K_ITR_REG_COUNT_PF + 1; i < FM10K_ITR_REG_COUNT; i++) {
		if (!(i & (vpp - 1)))
			FUNC16(hw, FUNC0(i), i - vpp);
		else
			FUNC16(hw, FUNC0(i), i - 1);
	}

	/* update PF ITR2[0] to reference the last vector */
	FUNC16(hw, FUNC0(0),
			FUNC15(hw, num_vfs - 1));

	/* loop through rings populating rings and TCs */
	for (i = 0; i < num_vfs; i++) {
		/* record index for VF queue 0 for use in end of loop */
		vf_q_idx0 = vf_q_idx;

		for (j = 0; j < qpp; j++, qmap_idx++, vf_q_idx++) {
			/* assign VF and locked TC to queues */
			FUNC16(hw, FUNC10(vf_q_idx), 0);
			FUNC16(hw, FUNC11(vf_q_idx),
					(i << FM10K_TXQCTL_TC_SHIFT) | i |
					FM10K_TXQCTL_VF | vid);
			FUNC16(hw, FUNC4(vf_q_idx),
					FM10K_RXDCTL_WRITE_BACK_MIN_DELAY |
					FM10K_RXDCTL_DROP_ON_EMPTY);
			FUNC16(hw, FUNC5(vf_q_idx),
					(i << FM10K_RXQCTL_VF_SHIFT) |
					FM10K_RXQCTL_VF);

			/* map queue pair to VF */
			FUNC16(hw, FUNC9(qmap_idx), vf_q_idx);
			FUNC16(hw, FUNC3(qmap_idx), vf_q_idx);
		}

		/* repeat the first ring for all of the remaining VF rings */
		for (; j < qmap_stride; j++, qmap_idx++) {
			FUNC16(hw, FUNC9(qmap_idx), vf_q_idx0);
			FUNC16(hw, FUNC3(qmap_idx), vf_q_idx0);
		}
	}

	/* loop through remaining indexes assigning all to queue 0 */
	while (qmap_idx < FM10K_TQMAP_TABLE_SIZE) {
		FUNC16(hw, FUNC9(qmap_idx), 0);
		FUNC16(hw, FUNC3(qmap_idx), 0);
		qmap_idx++;
	}

	return 0;
}