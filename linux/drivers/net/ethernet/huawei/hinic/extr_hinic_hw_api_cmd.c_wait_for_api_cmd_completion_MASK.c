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
struct hinic_api_cmd_chain {int chain_type; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int EINVAL ; 
#define  HINIC_API_CMD_WRITE_TO_MGMT_CPU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hinic_api_cmd_chain*) ; 

__attribute__((used)) static int FUNC2(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int err;

	switch (chain->chain_type) {
	case HINIC_API_CMD_WRITE_TO_MGMT_CPU:
		err = FUNC1(chain);
		if (err) {
			FUNC0(&pdev->dev, "API CMD Poll status timeout\n");
			break;
		}
		break;

	default:
		FUNC0(&pdev->dev, "unknown API CMD Chain type\n");
		err = -EINVAL;
		break;
	}

	return err;
}