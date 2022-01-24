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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {int chain_type; int /*<<< orphan*/  cell_size; struct hinic_api_cmd_cell* head_node; void* head_cell_paddr; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; } ;
struct hinic_api_cmd_cell_ctxt {void* cell_paddr; struct hinic_api_cmd_cell* cell_vaddr; } ;
struct TYPE_2__ {scalar_t__ hw_wb_resp_paddr; } ;
struct hinic_api_cmd_cell {int /*<<< orphan*/  next_cell_paddr; TYPE_1__ read; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HINIC_API_CMD_WRITE_TO_MGMT_CPU 128 
 int FUNC0 (struct hinic_api_cmd_chain*,struct hinic_api_cmd_cell*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct hinic_api_cmd_cell* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hinic_api_cmd_cell*,void*) ; 

__attribute__((used)) static int FUNC5(struct hinic_api_cmd_chain *chain,
			       int cell_idx,
			       struct hinic_api_cmd_cell *pre_node,
			       struct hinic_api_cmd_cell **node_vaddr)
{
	struct hinic_api_cmd_cell_ctxt *cell_ctxt;
	struct hinic_hwif *hwif = chain->hwif;
	struct pci_dev *pdev = hwif->pdev;
	struct hinic_api_cmd_cell *node;
	dma_addr_t node_paddr;
	int err;

	node = FUNC3(&pdev->dev, chain->cell_size, &node_paddr,
				  GFP_KERNEL);
	if (!node) {
		FUNC2(&pdev->dev, "Failed to allocate dma API CMD cell\n");
		return -ENOMEM;
	}

	node->read.hw_wb_resp_paddr = 0;

	cell_ctxt = &chain->cell_ctxt[cell_idx];
	cell_ctxt->cell_vaddr = node;
	cell_ctxt->cell_paddr = node_paddr;

	if (!pre_node) {
		chain->head_cell_paddr = node_paddr;
		chain->head_node = node;
	} else {
		/* The data in the HW should be in Big Endian Format */
		pre_node->next_cell_paddr = FUNC1(node_paddr);
	}

	switch (chain->chain_type) {
	case HINIC_API_CMD_WRITE_TO_MGMT_CPU:
		err = FUNC0(chain, node, cell_idx);
		if (err) {
			FUNC2(&pdev->dev, "Failed to allocate cmd buffer\n");
			goto err_alloc_cmd_buf;
		}
		break;

	default:
		FUNC2(&pdev->dev, "Unsupported API CMD chain type\n");
		err = -EINVAL;
		goto err_alloc_cmd_buf;
	}

	*node_vaddr = node;
	return 0;

err_alloc_cmd_buf:
	FUNC4(&pdev->dev, chain->cell_size, node, node_paddr);
	return err;
}