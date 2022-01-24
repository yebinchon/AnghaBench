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
typedef  int u32 ;
struct cas {scalar_t__ regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_type; } ;

/* Variables and functions */
 int BIM_CFG_DPAR_INTR_ENABLE ; 
 int BIM_CFG_RMA_INTR_ENABLE ; 
 int BIM_CFG_RTA_INTR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_ERR_BADACK ; 
 int PCI_ERR_BIM_DMA_READ ; 
 int PCI_ERR_BIM_DMA_WRITE ; 
 int PCI_ERR_DTRTO ; 
 int PCI_ERR_OTHER ; 
 int PCS_DATAPATH_MODE_MII ; 
 scalar_t__ REG_BIM_CFG ; 
 scalar_t__ REG_PCI_ERR_STATUS_MASK ; 
 scalar_t__ REG_PCS_DATAPATH_MODE ; 
 scalar_t__ REG_SW_RESET ; 
 int STOP_TRIES ; 
 int SW_RESET_BLOCK_PCS_SLINK ; 
 int SW_RESET_RX ; 
 int SW_RESET_TX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cas *cp, int blkflag)
{
	int limit;

	/* issue a global reset. don't use RSTOUT. */
	if (blkflag && !FUNC0(cp->phy_type)) {
		/* For PCS, when the blkflag is set, we should set the
		 * SW_REST_BLOCK_PCS_SLINK bit to prevent the results of
		 * the last autonegotiation from being cleared.  We'll
		 * need some special handling if the chip is set into a
		 * loopback mode.
		 */
		FUNC5((SW_RESET_TX | SW_RESET_RX | SW_RESET_BLOCK_PCS_SLINK),
		       cp->regs + REG_SW_RESET);
	} else {
		FUNC5(SW_RESET_TX | SW_RESET_RX, cp->regs + REG_SW_RESET);
	}

	/* need to wait at least 3ms before polling register */
	FUNC1(3);

	limit = STOP_TRIES;
	while (limit-- > 0) {
		u32 val = FUNC3(cp->regs + REG_SW_RESET);
		if ((val & (SW_RESET_TX | SW_RESET_RX)) == 0)
			goto done;
		FUNC4(10);
	}
	FUNC2(cp->dev, "sw reset failed\n");

done:
	/* enable various BIM interrupts */
	FUNC5(BIM_CFG_DPAR_INTR_ENABLE | BIM_CFG_RMA_INTR_ENABLE |
	       BIM_CFG_RTA_INTR_ENABLE, cp->regs + REG_BIM_CFG);

	/* clear out pci error status mask for handled errors.
	 * we don't deal with DMA counter overflows as they happen
	 * all the time.
	 */
	FUNC5(0xFFFFFFFFU & ~(PCI_ERR_BADACK | PCI_ERR_DTRTO |
			       PCI_ERR_OTHER | PCI_ERR_BIM_DMA_WRITE |
			       PCI_ERR_BIM_DMA_READ), cp->regs +
	       REG_PCI_ERR_STATUS_MASK);

	/* set up for MII by default to address mac rx reset timeout
	 * issue
	 */
	FUNC5(PCS_DATAPATH_MODE_MII, cp->regs + REG_PCS_DATAPATH_MODE);
}