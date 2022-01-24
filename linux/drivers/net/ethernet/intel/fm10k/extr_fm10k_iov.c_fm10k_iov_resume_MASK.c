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
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* connect ) (struct fm10k_hw*,TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_5__ ops; } ;
struct fm10k_vf_info {TYPE_6__ mbx; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* assign_default_mac_vlan ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int /*<<< orphan*/  (* set_lport ) (struct fm10k_hw*,struct fm10k_vf_info*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* assign_resources ) (struct fm10k_hw*,int,int) ;} ;
struct TYPE_10__ {TYPE_3__ ops; scalar_t__ total_vfs; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* configure_dglort_map ) (struct fm10k_hw*,struct fm10k_dglort_cfg*) ;} ;
struct TYPE_8__ {int dglort_map; TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_4__ iov; TYPE_2__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct fm10k_iov_data* iov_data; } ;
struct fm10k_dglort_cfg {int glort; int inner_rss; int vsi_b; void* vsi_l; int /*<<< orphan*/  queue_b; void* rss_l; int /*<<< orphan*/  idx; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FM10K_DGLORTMAP_MASK_SHIFT ; 
 int FM10K_DGLORTMAP_NONE ; 
 int /*<<< orphan*/  FM10K_VF_FLAG_MULTI_CAPABLE ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  fm10k_dglort_vf_rss ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 struct fm10k_intfc* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_hw*,struct fm10k_dglort_cfg*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_hw*,struct fm10k_vf_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_hw*,struct fm10k_vf_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct fm10k_hw*,TYPE_6__*) ; 

int FUNC10(struct pci_dev *pdev)
{
	struct fm10k_intfc *interface = FUNC4(pdev);
	struct fm10k_iov_data *iov_data = interface->iov_data;
	struct fm10k_dglort_cfg dglort = { 0 };
	struct fm10k_hw *hw = &interface->hw;
	int num_vfs, i;

	/* pull out num_vfs from iov_data */
	num_vfs = iov_data ? iov_data->num_vfs : 0;

	/* return error if iov_data is not already populated */
	if (!iov_data)
		return -ENOMEM;

	/* Lower severity of completer abort error reporting as
	 * the VFs can trigger this any time they read a queue
	 * that they don't own.
	 */
	FUNC1(pdev);

	/* allocate hardware resources for the VFs */
	hw->iov.ops.assign_resources(hw, num_vfs, num_vfs);

	/* configure DGLORT mapping for RSS */
	dglort.glort = hw->mac.dglort_map & FM10K_DGLORTMAP_NONE;
	dglort.idx = fm10k_dglort_vf_rss;
	dglort.inner_rss = 1;
	dglort.rss_l = FUNC0(FUNC2(hw) - 1);
	dglort.queue_b = FUNC3(hw, 0);
	dglort.vsi_l = FUNC0(hw->iov.total_vfs - 1);
	dglort.vsi_b = 1;

	hw->mac.ops.configure_dglort_map(hw, &dglort);

	/* assign resources to the device */
	for (i = 0; i < num_vfs; i++) {
		struct fm10k_vf_info *vf_info = &iov_data->vf_info[i];

		/* allocate all but the last GLORT to the VFs */
		if (i == (~hw->mac.dglort_map >> FM10K_DGLORTMAP_MASK_SHIFT))
			break;

		/* assign GLORT to VF, and restrict it to multicast */
		hw->iov.ops.set_lport(hw, vf_info, i,
				      FM10K_VF_FLAG_MULTI_CAPABLE);

		/* mailbox is disconnected so we don't send a message */
		hw->iov.ops.assign_default_mac_vlan(hw, vf_info);

		/* now we are ready so we can connect */
		vf_info->mbx.ops.connect(hw, &vf_info->mbx);
	}

	return 0;
}