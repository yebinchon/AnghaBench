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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {scalar_t__ pm_cap; } ;
struct bnx2x {int flags; struct pci_dev* pdev; TYPE_1__* dev; scalar_t__ wol; } ;
struct TYPE_2__ {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS ; 
 int DRV_MSG_CODE_UNLOAD_REQ_WOL_EN ; 
 int DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP ; 
 int EMAC_REG_EMAC_MAC_MATCH ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 
 int FW_MSG_CODE_DRV_UNLOAD_COMMON ; 
 int FW_MSG_CODE_DRV_UNLOAD_FUNCTION ; 
 int FW_MSG_CODE_DRV_UNLOAD_PORT ; 
 int GRCBASE_EMAC0 ; 
 int GRCBASE_EMAC1 ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int NO_WOL_FLAG ; 
 scalar_t__ PCI_PM_CTRL ; 
 int PCI_PM_CTRL_PME_ENABLE ; 
 int PCI_PM_CTRL_PME_STATUS ; 
 int UNLOAD_NORMAL ; 
 int FUNC6 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 scalar_t__** bnx2x_load_count ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int) ; 

u32 FUNC9(struct bnx2x *bp, int unload_mode)
{
	u32 reset_code = 0;
	int port = FUNC2(bp);

	/* Select the UNLOAD request mode */
	if (unload_mode == UNLOAD_NORMAL)
		reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;

	else if (bp->flags & NO_WOL_FLAG)
		reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP;

	else if (bp->wol) {
		u32 emac_base = port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
		u8 *mac_addr = bp->dev->dev_addr;
		struct pci_dev *pdev = bp->pdev;
		u32 val;
		u16 pmc;

		/* The mac address is written to entries 1-4 to
		 * preserve entry 0 which is used by the PMF
		 */
		u8 entry = (FUNC3(bp) + 1)*8;

		val = (mac_addr[0] << 8) | mac_addr[1];
		FUNC5(bp, EMAC_REG_EMAC_MAC_MATCH + entry, val);

		val = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
		      (mac_addr[4] << 8) | mac_addr[5];
		FUNC5(bp, EMAC_REG_EMAC_MAC_MATCH + entry + 4, val);

		/* Enable the PME and clear the status */
		FUNC7(pdev, pdev->pm_cap + PCI_PM_CTRL, &pmc);
		pmc |= PCI_PM_CTRL_PME_ENABLE | PCI_PM_CTRL_PME_STATUS;
		FUNC8(pdev, pdev->pm_cap + PCI_PM_CTRL, pmc);

		reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_EN;

	} else
		reset_code = DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS;

	/* Send the request to the MCP */
	if (!FUNC0(bp))
		reset_code = FUNC6(bp, reset_code, 0);
	else {
		int path = FUNC1(bp);

		FUNC4(NETIF_MSG_IFDOWN, "NO MCP - load counts[%d]      %d, %d, %d\n",
		   path, bnx2x_load_count[path][0], bnx2x_load_count[path][1],
		   bnx2x_load_count[path][2]);
		bnx2x_load_count[path][0]--;
		bnx2x_load_count[path][1 + port]--;
		FUNC4(NETIF_MSG_IFDOWN, "NO MCP - new load counts[%d]  %d, %d, %d\n",
		   path, bnx2x_load_count[path][0], bnx2x_load_count[path][1],
		   bnx2x_load_count[path][2]);
		if (bnx2x_load_count[path][0] == 0)
			reset_code = FW_MSG_CODE_DRV_UNLOAD_COMMON;
		else if (bnx2x_load_count[path][1 + port] == 0)
			reset_code = FW_MSG_CODE_DRV_UNLOAD_PORT;
		else
			reset_code = FW_MSG_CODE_DRV_UNLOAD_FUNCTION;
	}

	return reset_code;
}