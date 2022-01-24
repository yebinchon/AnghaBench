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
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_pfhwdev {int /*<<< orphan*/  pf_to_mgmt; struct hinic_hwdev hwdev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_MOD_L2NIC ; 
 int /*<<< orphan*/  HINIC_PF_MGMT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hinic_hwif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hinic_pfhwdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nic_mgmt_msg_handler ; 

__attribute__((used)) static int FUNC4(struct hinic_pfhwdev *pfhwdev)
{
	struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int err;

	err = FUNC1(&pfhwdev->pf_to_mgmt, hwif);
	if (err) {
		FUNC0(&pdev->dev, "Failed to initialize PF to MGMT channel\n");
		return err;
	}

	FUNC2(&pfhwdev->pf_to_mgmt, HINIC_MOD_L2NIC,
				   pfhwdev, nic_mgmt_msg_handler);

	FUNC3(hwif, HINIC_PF_MGMT_ACTIVE);
	return 0;
}