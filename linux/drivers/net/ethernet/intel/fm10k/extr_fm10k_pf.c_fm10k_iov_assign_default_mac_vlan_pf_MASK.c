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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ (* enqueue_tx ) (struct fm10k_hw*,TYPE_4__*,scalar_t__*) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct fm10k_vf_info {scalar_t__ vf_idx; int pf_vid; scalar_t__ sw_vid; scalar_t__* mac; TYPE_4__ mbx; } ;
struct TYPE_7__ {scalar_t__ itr_scale; } ;
struct TYPE_5__ {scalar_t__ num_vfs; } ;
struct fm10k_hw {TYPE_3__ mac; TYPE_1__ iov; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FM10K_ERR_DMA_PENDING ; 
 scalar_t__ FM10K_ERR_PARAM ; 
 int /*<<< orphan*/  FM10K_MAC_VLAN_MSG_DEFAULT_MAC ; 
 scalar_t__ FM10K_MBX_ERR_NO_MBX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FM10K_TDLEN_ITR_SCALE_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FM10K_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FM10K_TXQCTL_TC_SHIFT ; 
 scalar_t__ FM10K_TXQCTL_VF ; 
 scalar_t__ FM10K_TXQCTL_VID_MASK ; 
 scalar_t__ FM10K_TXQCTL_VID_SHIFT ; 
 int /*<<< orphan*/  FM10K_VF_MSG_ID_MAC_VLAN ; 
 scalar_t__ FM10K_VLAN_OVERRIDE ; 
 scalar_t__ FUNC6 (struct fm10k_hw*) ; 
 scalar_t__ FUNC7 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct fm10k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct fm10k_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__*) ; 
 scalar_t__ FUNC13 (struct fm10k_hw*,TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static s32 FUNC15(struct fm10k_hw *hw,
						struct fm10k_vf_info *vf_info)
{
	u16 qmap_stride, queues_per_pool, vf_q_idx, timeout, qmap_idx, i;
	u32 msg[4], txdctl, txqctl, tdbal = 0, tdbah = 0;
	s32 err = 0;
	u16 vf_idx, vf_vid;

	/* verify vf is in range */
	if (!vf_info || vf_info->vf_idx >= hw->iov.num_vfs)
		return FM10K_ERR_PARAM;

	/* determine qmap offsets and counts */
	qmap_stride = (hw->iov.num_vfs > 8) ? 32 : 256;
	queues_per_pool = FUNC6(hw);

	/* calculate starting index for queues */
	vf_idx = vf_info->vf_idx;
	vf_q_idx = FUNC10(hw, vf_idx);
	qmap_idx = qmap_stride * vf_idx;

	/* Determine correct default VLAN ID. The FM10K_VLAN_OVERRIDE bit is
	 * used here to indicate to the VF that it will not have privilege to
	 * write VLAN_TABLE. All policy is enforced on the PF but this allows
	 * the VF to correctly report errors to userspace requests.
	 */
	if (vf_info->pf_vid)
		vf_vid = vf_info->pf_vid | FM10K_VLAN_OVERRIDE;
	else
		vf_vid = vf_info->sw_vid;

	/* generate MAC_ADDR request */
	FUNC9(msg, FM10K_VF_MSG_ID_MAC_VLAN);
	FUNC8(msg, FM10K_MAC_VLAN_MSG_DEFAULT_MAC,
				    vf_info->mac, vf_vid);

	/* Configure Queue control register with new VLAN ID. The TXQCTL
	 * register is RO from the VF, so the PF must do this even in the
	 * case of notifying the VF of a new VID via the mailbox.
	 */
	txqctl = ((u32)vf_vid << FM10K_TXQCTL_VID_SHIFT) &
		 FM10K_TXQCTL_VID_MASK;
	txqctl |= (vf_idx << FM10K_TXQCTL_TC_SHIFT) |
		  FM10K_TXQCTL_VF | vf_idx;

	for (i = 0; i < queues_per_pool; i++)
		FUNC11(hw, FUNC5(vf_q_idx + i), txqctl);

	/* try loading a message onto outgoing mailbox first */
	if (vf_info->mbx.ops.enqueue_tx) {
		err = vf_info->mbx.ops.enqueue_tx(hw, &vf_info->mbx, msg);
		if (err != FM10K_MBX_ERR_NO_MBX)
			return err;
		err = 0;
	}

	/* If we aren't connected to a mailbox, this is most likely because
	 * the VF driver is not running. It should thus be safe to re-map
	 * queues and use the registers to pass the MAC address so that the VF
	 * driver gets correct information during its initialization.
	 */

	/* MAP Tx queue back to 0 temporarily, and disable it */
	FUNC11(hw, FUNC3(qmap_idx), 0);
	FUNC11(hw, FUNC4(vf_q_idx), 0);

	/* verify ring has disabled before modifying base address registers */
	txdctl = FUNC7(hw, FUNC4(vf_q_idx));
	for (timeout = 0; txdctl & FM10K_TXDCTL_ENABLE; timeout++) {
		/* limit ourselves to a 1ms timeout */
		if (timeout == 10) {
			err = FM10K_ERR_DMA_PENDING;
			goto err_out;
		}

		FUNC14(100, 200);
		txdctl = FUNC7(hw, FUNC4(vf_q_idx));
	}

	/* Update base address registers to contain MAC address */
	if (FUNC12(vf_info->mac)) {
		tdbal = (((u32)vf_info->mac[3]) << 24) |
			(((u32)vf_info->mac[4]) << 16) |
			(((u32)vf_info->mac[5]) << 8);

		tdbah = (((u32)0xFF)	        << 24) |
			(((u32)vf_info->mac[0]) << 16) |
			(((u32)vf_info->mac[1]) << 8) |
			((u32)vf_info->mac[2]);
	}

	/* Record the base address into queue 0 */
	FUNC11(hw, FUNC1(vf_q_idx), tdbal);
	FUNC11(hw, FUNC0(vf_q_idx), tdbah);

	/* Provide the VF the ITR scale, using software-defined fields in TDLEN
	 * to pass the information during VF initialization. See definition of
	 * FM10K_TDLEN_ITR_SCALE_SHIFT for more details.
	 */
	FUNC11(hw, FUNC2(vf_q_idx), hw->mac.itr_scale <<
						   FM10K_TDLEN_ITR_SCALE_SHIFT);

err_out:
	/* restore the queue back to VF ownership */
	FUNC11(hw, FUNC3(qmap_idx), vf_q_idx);
	return err;
}