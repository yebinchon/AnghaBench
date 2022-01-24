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
struct pci_dev {int dummy; } ;
struct fm10k_vf_info {int /*<<< orphan*/  glort; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int /*<<< orphan*/  (* reset_resources ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ iov; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct fm10k_iov_data* iov_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM10K_DGLORTMAP_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fm10k_dglort_vf_rss ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fm10k_intfc* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,struct fm10k_vf_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,struct fm10k_vf_info*) ; 

void FUNC6(struct pci_dev *pdev)
{
	struct fm10k_intfc *interface = FUNC3(pdev);
	struct fm10k_iov_data *iov_data = interface->iov_data;
	struct fm10k_hw *hw = &interface->hw;
	int num_vfs, i;

	/* pull out num_vfs from iov_data */
	num_vfs = iov_data ? iov_data->num_vfs : 0;

	/* shut down queue mapping for VFs */
	FUNC2(hw, FUNC0(fm10k_dglort_vf_rss),
			FM10K_DGLORTMAP_NONE);

	/* Stop any active VFs and reset their resources */
	for (i = 0; i < num_vfs; i++) {
		struct fm10k_vf_info *vf_info = &iov_data->vf_info[i];

		hw->iov.ops.reset_resources(hw, vf_info);
		hw->iov.ops.reset_lport(hw, vf_info);
		FUNC1(interface, vf_info->glort, false);
	}
}