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
struct hinic_hwdev {int /*<<< orphan*/  aeqs; } ;
struct hinic_pfhwdev {struct hinic_hwdev hwdev; } ;
struct hinic_pf_to_mgmt {int /*<<< orphan*/  cmd_chain; scalar_t__ sync_msg_id; int /*<<< orphan*/  sync_msg_lock; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_MSG_FROM_MGMT_CPU ; 
 int FUNC0 (struct hinic_pf_to_mgmt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hinic_pf_to_mgmt*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct hinic_hwif*) ; 
 int /*<<< orphan*/  mgmt_msg_aeqe_handler ; 
 struct hinic_pfhwdev* FUNC4 (struct hinic_pf_to_mgmt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(struct hinic_pf_to_mgmt *pf_to_mgmt,
			  struct hinic_hwif *hwif)
{
	struct hinic_pfhwdev *pfhwdev = FUNC4(pf_to_mgmt);
	struct hinic_hwdev *hwdev = &pfhwdev->hwdev;
	struct pci_dev *pdev = hwif->pdev;
	int err;

	pf_to_mgmt->hwif = hwif;

	FUNC5(&pf_to_mgmt->sync_msg_lock, 1);
	pf_to_mgmt->sync_msg_id = 0;

	err = FUNC0(pf_to_mgmt);
	if (err) {
		FUNC1(&pdev->dev, "Failed to allocate msg buffers\n");
		return err;
	}

	err = FUNC3(pf_to_mgmt->cmd_chain, hwif);
	if (err) {
		FUNC1(&pdev->dev, "Failed to initialize cmd chains\n");
		return err;
	}

	FUNC2(&hwdev->aeqs, HINIC_MSG_FROM_MGMT_CPU,
				 pf_to_mgmt,
				 mgmt_msg_aeqe_handler);
	return 0;
}