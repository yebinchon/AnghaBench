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
struct hinic_api_cmd_chain_attr {int num_cells; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_chain {int /*<<< orphan*/  num_cells; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct hinic_api_cmd_chain* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_api_cmd_chain*) ; 
 int FUNC2 (struct hinic_api_cmd_chain*,struct hinic_api_cmd_chain_attr*) ; 
 int FUNC3 (struct hinic_api_cmd_chain*) ; 
 int FUNC4 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_api_cmd_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct hinic_api_cmd_chain* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hinic_api_cmd_chain *
	FUNC8(struct hinic_api_cmd_chain_attr *attr)
{
	struct hinic_hwif *hwif = attr->hwif;
	struct pci_dev *pdev = hwif->pdev;
	struct hinic_api_cmd_chain *chain;
	int err;

	if (attr->num_cells & (attr->num_cells - 1)) {
		FUNC6(&pdev->dev, "Invalid number of cells, must be power of 2\n");
		return FUNC0(-EINVAL);
	}

	chain = FUNC7(&pdev->dev, sizeof(*chain), GFP_KERNEL);
	if (!chain)
		return FUNC0(-ENOMEM);

	err = FUNC2(chain, attr);
	if (err) {
		FUNC6(&pdev->dev, "Failed to initialize chain\n");
		return FUNC0(err);
	}

	err = FUNC4(chain);
	if (err) {
		FUNC6(&pdev->dev, "Failed to create cells for API CMD chain\n");
		goto err_create_cells;
	}

	err = FUNC3(chain);
	if (err) {
		FUNC6(&pdev->dev, "Failed to initialize chain HW\n");
		goto err_chain_hw_init;
	}

	return chain;

err_chain_hw_init:
	FUNC5(chain, chain->num_cells);

err_create_cells:
	FUNC1(chain);
	return FUNC0(err);
}