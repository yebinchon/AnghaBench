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
struct be_resources {int /*<<< orphan*/  member_0; } ;
struct be_adapter {int num_vfs; int /*<<< orphan*/  pool_res; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int,struct be_resources*) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int,struct be_resources*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct be_adapter* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev, int num_vfs)
{
	struct be_adapter *adapter = FUNC9(pdev);
	struct be_resources vft_res = {0};
	int status;

	if (!num_vfs)
		FUNC5(adapter);

	adapter->num_vfs = num_vfs;

	if (adapter->num_vfs == 0 && FUNC11(pdev)) {
		FUNC8(&pdev->dev,
			 "Cannot disable VFs while they are assigned\n");
		return -EBUSY;
	}

	/* When the HW is in SRIOV capable configuration, the PF-pool resources
	 * are equally distributed across the max-number of VFs. The user may
	 * request only a subset of the max-vfs to be enabled.
	 * Based on num_vfs, redistribute the resources across num_vfs so that
	 * each VF will have access to more number of resources.
	 * This facility is not available in BE3 FW.
	 * Also, this is done by FW in Lancer chip.
	 */
	if (FUNC14(adapter) && !FUNC10(pdev)) {
		FUNC0(adapter, adapter->num_vfs,
				    &vft_res);
		status = FUNC1(adapter, adapter->pool_res,
						 adapter->num_vfs, &vft_res);
		if (status)
			FUNC7(&pdev->dev,
				"Failed to optimize SR-IOV resources\n");
	}

	status = FUNC3(adapter);
	if (status)
		return FUNC2(status);

	/* Updating real_num_tx/rx_queues() requires rtnl_lock() */
	FUNC12();
	status = FUNC4(adapter);
	FUNC13();
	if (status)
		return FUNC2(status);

	if (adapter->num_vfs)
		status = FUNC6(adapter);

	if (!status)
		return adapter->num_vfs;

	return 0;
}