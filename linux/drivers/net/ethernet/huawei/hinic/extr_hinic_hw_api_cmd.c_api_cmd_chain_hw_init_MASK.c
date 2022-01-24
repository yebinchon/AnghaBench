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
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_api_cmd_chain*) ; 
 int FUNC3 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int err;

	FUNC0(chain);

	FUNC5(chain);

	err = FUNC3(chain);
	if (err) {
		FUNC6(&pdev->dev, "Failed to restart API CMD HW\n");
		return err;
	}

	FUNC1(chain);
	FUNC4(chain);
	FUNC2(chain);
	return 0;
}