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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  state; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int I40E_FLAG_VEB_MODE_ENABLED ; 
 int /*<<< orphan*/  I40E_PF_RESET_FLAG ; 
 int /*<<< orphan*/  __I40E_VIRTCHNL_OP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 struct i40e_pf* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct pci_dev *pdev, int num_vfs)
{
	struct i40e_pf *pf = FUNC5(pdev);
	int ret = 0;

	if (FUNC7(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
		FUNC1(&pdev->dev, "Unable to configure VFs, other operation is pending.\n");
		return -EAGAIN;
	}

	if (num_vfs) {
		if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
			pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
			FUNC2(pf, I40E_PF_RESET_FLAG);
		}
		ret = FUNC4(pdev, num_vfs);
		goto sriov_configure_out;
	}

	if (!FUNC6(pf->pdev)) {
		FUNC3(pf);
		pf->flags &= ~I40E_FLAG_VEB_MODE_ENABLED;
		FUNC2(pf, I40E_PF_RESET_FLAG);
	} else {
		FUNC1(&pdev->dev, "Unable to free VFs because some are assigned to VMs.\n");
		ret = -EINVAL;
		goto sriov_configure_out;
	}
sriov_configure_out:
	FUNC0(__I40E_VIRTCHNL_OP_PENDING, pf->state);
	return ret;
}