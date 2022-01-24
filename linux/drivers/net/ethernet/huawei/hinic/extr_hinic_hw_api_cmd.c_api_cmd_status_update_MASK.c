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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_api_cmd_status {int /*<<< orphan*/  status; int /*<<< orphan*/  header; } ;
struct hinic_api_cmd_chain {scalar_t__ cons_idx; struct hinic_api_cmd_status* wb_status; struct hinic_hwif* hwif; } ;
typedef  enum hinic_api_cmd_chain_type { ____Placeholder_hinic_api_cmd_chain_type } hinic_api_cmd_chain_type ;

/* Variables and functions */
 int /*<<< orphan*/  CHAIN_ID ; 
 int /*<<< orphan*/  CHKSUM_ERR ; 
 int /*<<< orphan*/  CONS_IDX ; 
 int HINIC_API_CMD_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC5(struct hinic_api_cmd_chain *chain)
{
	enum hinic_api_cmd_chain_type chain_type;
	struct hinic_api_cmd_status *wb_status;
	struct hinic_hwif *hwif = chain->hwif;
	struct pci_dev *pdev = hwif->pdev;
	u64 status_header;
	u32 status;

	wb_status = chain->wb_status;
	status_header = FUNC3(wb_status->header);

	status = FUNC2(wb_status->status);
	if (FUNC0(status, CHKSUM_ERR)) {
		FUNC4(&pdev->dev, "API CMD status: Xor check error\n");
		return;
	}

	chain_type = FUNC1(status_header, CHAIN_ID);
	if (chain_type >= HINIC_API_CMD_MAX) {
		FUNC4(&pdev->dev, "unknown API CMD Chain %d\n", chain_type);
		return;
	}

	chain->cons_idx = FUNC0(status, CONS_IDX);
}