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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_chain {size_t prod_idx; int chain_type; struct hinic_api_cmd_cell_ctxt* cell_ctxt; struct hinic_hwif* hwif; struct hinic_api_cmd_cell* curr_node; } ;
struct hinic_api_cmd_cell_ctxt {int /*<<< orphan*/  api_cmd_vaddr; } ;
struct hinic_api_cmd_cell {int desc; } ;
typedef  enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;

/* Variables and functions */
 int API_CMD_WRITE ; 
 int /*<<< orphan*/  API_TYPE ; 
 int /*<<< orphan*/  DEST ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  HINIC_API_CMD_WRITE_TO_MGMT_CPU 128 
 int /*<<< orphan*/  MGMT_BYPASS ; 
 int NO_BYPASS ; 
 int /*<<< orphan*/  RD_WR ; 
 int SGE_DATA ; 
 int /*<<< orphan*/  SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOR_CHKSUM ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*) ; 

__attribute__((used)) static void FUNC6(struct hinic_api_cmd_chain *chain,
			    enum hinic_node_id dest,
			    void *cmd, u16 cmd_size)
{
	struct hinic_api_cmd_cell *cell = chain->curr_node;
	struct hinic_api_cmd_cell_ctxt *cell_ctxt;
	struct hinic_hwif *hwif = chain->hwif;
	struct pci_dev *pdev = hwif->pdev;

	cell_ctxt = &chain->cell_ctxt[chain->prod_idx];

	switch (chain->chain_type) {
	case HINIC_API_CMD_WRITE_TO_MGMT_CPU:
		cell->desc = FUNC0(SGE_DATA, API_TYPE)   |
			     FUNC0(API_CMD_WRITE, RD_WR) |
			     FUNC0(NO_BYPASS, MGMT_BYPASS);
		break;

	default:
		FUNC3(&pdev->dev, "unknown Chain type\n");
		return;
	}

	cell->desc |= FUNC0(dest, DEST)        |
		      FUNC0(FUNC1(cmd_size), SIZE);

	cell->desc |= FUNC0(FUNC5(&cell->desc),
					     XOR_CHKSUM);

	/* The data in the HW should be in Big Endian Format */
	cell->desc = FUNC2(cell->desc);

	FUNC4(cell_ctxt->api_cmd_vaddr, cmd, cmd_size);
}