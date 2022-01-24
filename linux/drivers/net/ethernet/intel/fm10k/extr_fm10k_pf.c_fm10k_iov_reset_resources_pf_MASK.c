#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* disconnect ) (struct fm10k_hw*,TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_1__ ops; scalar_t__ timeout; } ;
struct fm10k_vf_info {int vf_idx; int pf_vid; int sw_vid; scalar_t__* mac; int /*<<< orphan*/  vsi; TYPE_6__ mbx; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* update_int_moderator ) (struct fm10k_hw*) ;} ;
struct TYPE_11__ {int itr_scale; TYPE_2__ ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* assign_int_moderator ) (struct fm10k_hw*,int) ;} ;
struct TYPE_10__ {int num_vfs; TYPE_3__ ops; } ;
struct fm10k_hw {TYPE_5__ mac; TYPE_4__ iov; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FM10K_RETA_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FM10K_RSSRK_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FM10K_RXDCTL_DROP_ON_EMPTY ; 
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FM10K_RXQCTL_VF ; 
 int FM10K_RXQCTL_VF_SHIFT ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FM10K_TC_CREDIT_CREDIT_MASK ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FM10K_TDLEN_ITR_SCALE_SHIFT ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FM10K_TXQCTL_TC_SHIFT ; 
 int FM10K_TXQCTL_VF ; 
 int FM10K_TXQCTL_VID_SHIFT ; 
 int FM10K_VFMBMEM_LEN ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int FM10K_VLAN_TABLE_SIZE ; 
 int FUNC20 (struct fm10k_hw*) ; 
 int FUNC21 (struct fm10k_hw*) ; 
 int FUNC22 (struct fm10k_hw*,int) ; 
 int FUNC23 (struct fm10k_hw*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 (struct fm10k_hw*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC27 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC28 (struct fm10k_hw*,int) ; 

__attribute__((used)) static s32 FUNC29(struct fm10k_hw *hw,
					struct fm10k_vf_info *vf_info)
{
	u16 qmap_stride, queues_per_pool, vf_q_idx, qmap_idx;
	u32 tdbal = 0, tdbah = 0, txqctl, rxqctl;
	u16 vf_v_idx, vf_v_limit, vf_vid;
	u8 vf_idx = vf_info->vf_idx;
	int i;

	/* verify vf is in range */
	if (vf_idx >= hw->iov.num_vfs)
		return FM10K_ERR_PARAM;

	/* clear event notification of VF FLR */
	FUNC24(hw, FUNC4(vf_idx / 32), FUNC0(vf_idx % 32));

	/* force timeout and then disconnect the mailbox */
	vf_info->mbx.timeout = 0;
	if (vf_info->mbx.ops.disconnect)
		vf_info->mbx.ops.disconnect(hw, &vf_info->mbx);

	/* determine vector offset and count */
	vf_v_idx = FUNC23(hw, vf_idx);
	vf_v_limit = vf_v_idx + FUNC21(hw);

	/* determine qmap offsets and counts */
	qmap_stride = (hw->iov.num_vfs > 8) ? 32 : 256;
	queues_per_pool = FUNC20(hw);
	qmap_idx = qmap_stride * vf_idx;

	/* make all the queues inaccessible to the VF */
	for (i = qmap_idx; i < (qmap_idx + qmap_stride); i++) {
		FUNC24(hw, FUNC16(i), 0);
		FUNC24(hw, FUNC6(i), 0);
	}

	/* calculate starting index for queues */
	vf_q_idx = FUNC22(hw, vf_idx);

	/* determine correct default VLAN ID */
	if (vf_info->pf_vid)
		vf_vid = vf_info->pf_vid;
	else
		vf_vid = vf_info->sw_vid;

	/* configure Queue control register */
	txqctl = ((u32)vf_vid << FM10K_TXQCTL_VID_SHIFT) |
		 (vf_idx << FM10K_TXQCTL_TC_SHIFT) |
		 FM10K_TXQCTL_VF | vf_idx;
	rxqctl = (vf_idx << FM10K_RXQCTL_VF_SHIFT) | FM10K_RXQCTL_VF;

	/* stop further DMA and reset queue ownership back to VF */
	for (i = vf_q_idx; i < (queues_per_pool + vf_q_idx); i++) {
		FUNC24(hw, FUNC17(i), 0);
		FUNC24(hw, FUNC18(i), txqctl);
		FUNC24(hw, FUNC8(i),
				FM10K_RXDCTL_WRITE_BACK_MIN_DELAY |
				FM10K_RXDCTL_DROP_ON_EMPTY);
		FUNC24(hw, FUNC9(i), rxqctl);
	}

	/* reset TC with -1 credits and no quanta to prevent transmit */
	FUNC24(hw, FUNC11(vf_idx), 0);
	FUNC24(hw, FUNC12(vf_idx), 0);
	FUNC24(hw, FUNC10(vf_idx),
			FM10K_TC_CREDIT_CREDIT_MASK);

	/* update our first entry in the table based on previous VF */
	if (!vf_idx)
		hw->mac.ops.update_int_moderator(hw);
	else
		hw->iov.ops.assign_int_moderator(hw, vf_idx - 1);

	/* reset linked list so it now includes our active vectors */
	if (vf_idx == (hw->iov.num_vfs - 1))
		FUNC24(hw, FUNC1(0), vf_v_idx);
	else
		FUNC24(hw, FUNC1(vf_v_limit), vf_v_idx);

	/* link remaining vectors so that next points to previous */
	for (vf_v_idx++; vf_v_idx < vf_v_limit; vf_v_idx++)
		FUNC24(hw, FUNC1(vf_v_idx), vf_v_idx - 1);

	/* zero out MBMEM, VLAN_TABLE, RETA, RSSRK, and MRQC registers */
	for (i = FM10K_VFMBMEM_LEN; i--;)
		FUNC24(hw, FUNC2(vf_idx, i), 0);
	for (i = FM10K_VLAN_TABLE_SIZE; i--;)
		FUNC24(hw, FUNC19(vf_info->vsi, i), 0);
	for (i = FM10K_RETA_SIZE; i--;)
		FUNC24(hw, FUNC5(vf_info->vsi, i), 0);
	for (i = FM10K_RSSRK_SIZE; i--;)
		FUNC24(hw, FUNC7(vf_info->vsi, i), 0);
	FUNC24(hw, FUNC3(vf_info->vsi), 0);

	/* Update base address registers to contain MAC address */
	if (FUNC25(vf_info->mac)) {
		tdbal = (((u32)vf_info->mac[3]) << 24) |
			(((u32)vf_info->mac[4]) << 16) |
			(((u32)vf_info->mac[5]) << 8);
		tdbah = (((u32)0xFF)	   << 24) |
			(((u32)vf_info->mac[0]) << 16) |
			(((u32)vf_info->mac[1]) << 8) |
			((u32)vf_info->mac[2]);
	}

	/* map queue pairs back to VF from last to first */
	for (i = queues_per_pool; i--;) {
		FUNC24(hw, FUNC14(vf_q_idx + i), tdbal);
		FUNC24(hw, FUNC13(vf_q_idx + i), tdbah);
		/* See definition of FM10K_TDLEN_ITR_SCALE_SHIFT for an
		 * explanation of how TDLEN is used.
		 */
		FUNC24(hw, FUNC15(vf_q_idx + i),
				hw->mac.itr_scale <<
				FM10K_TDLEN_ITR_SCALE_SHIFT);
		FUNC24(hw, FUNC16(qmap_idx + i), vf_q_idx + i);
		FUNC24(hw, FUNC6(qmap_idx + i), vf_q_idx + i);
	}

	/* repeat the first ring for all the remaining VF rings */
	for (i = queues_per_pool; i < qmap_stride; i++) {
		FUNC24(hw, FUNC16(qmap_idx + i), vf_q_idx);
		FUNC24(hw, FUNC6(qmap_idx + i), vf_q_idx);
	}

	return 0;
}