#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {int /*<<< orphan*/ * fw; TYPE_1__* ahw; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {size_t fw_type; } ;

/* Variables and functions */
 size_t QLCNIC_FLASH_ROMIMAGE ; 
 size_t QLCNIC_UNKNOWN_ROMIMAGE ; 
 int /*<<< orphan*/ * fw_name ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct qlcnic_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	int rc;

	adapter->ahw->fw_type = QLCNIC_UNKNOWN_ROMIMAGE;

next:
	FUNC0(adapter);

	if (adapter->ahw->fw_type == QLCNIC_FLASH_ROMIMAGE) {
		adapter->fw = NULL;
	} else {
		rc = FUNC3(&adapter->fw,
				      fw_name[adapter->ahw->fw_type],
				      &pdev->dev);
		if (rc != 0)
			goto next;

		rc = FUNC1(adapter);
		if (rc != 0) {
			FUNC2(adapter->fw);
			FUNC4(1000, 1500);
			goto next;
		}
	}
}