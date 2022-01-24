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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct page {int dummy; } ;
struct cas {int page_order; int page_size; int tx_fifo_size; int phy_type; int phy_addr; int phy_id; int /*<<< orphan*/  cas_flags; scalar_t__ regs; TYPE_1__* dev; int /*<<< orphan*/  rx_fifo_size; struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int CAS_BMSR_1000_EXTEND ; 
 int /*<<< orphan*/  CAS_FLAG_1000MB_CAP ; 
 scalar_t__ CAS_JUMBO_PAGE_SHIFT ; 
 int /*<<< orphan*/  CAS_MAX_MTU ; 
 int /*<<< orphan*/  CAS_MII_1000_EXTEND ; 
 int CAS_PHY_MII_MDIO0 ; 
 int CAS_PHY_MII_MDIO1 ; 
 int CAS_PHY_SERDES ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MIF_CFG_MDIO_0 ; 
 int MIF_CFG_MDIO_1 ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCS_DATAPATH_MODE_MII ; 
 scalar_t__ REG_MIF_CFG ; 
 scalar_t__ REG_MIF_STATE_MACHINE ; 
 scalar_t__ REG_PCS_DATAPATH_MODE ; 
 scalar_t__ REG_TX_FIFO_SIZE ; 
 int /*<<< orphan*/  RX_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*,scalar_t__) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct cas *cp)
{
	struct pci_dev *pdev = cp->pdev;
	u32 cfg;
	int i;

	/* get page size for rx buffers. */
	cp->page_order = 0;
#ifdef USE_PAGE_ORDER
	if (PAGE_SHIFT < CAS_JUMBO_PAGE_SHIFT) {
		/* see if we can allocate larger pages */
		struct page *page = alloc_pages(GFP_ATOMIC,
						CAS_JUMBO_PAGE_SHIFT -
						PAGE_SHIFT);
		if (page) {
			__free_pages(page, CAS_JUMBO_PAGE_SHIFT - PAGE_SHIFT);
			cp->page_order = CAS_JUMBO_PAGE_SHIFT - PAGE_SHIFT;
		} else {
			printk("MTU limited to %d bytes\n", CAS_MAX_MTU);
		}
	}
#endif
	cp->page_size = (PAGE_SIZE << cp->page_order);

	/* Fetch the FIFO configurations. */
	cp->tx_fifo_size = FUNC8(cp->regs + REG_TX_FIFO_SIZE) * 64;
	cp->rx_fifo_size = RX_FIFO_SIZE;

	/* finish phy determination. MDIO1 takes precedence over MDIO0 if
	 * they're both connected.
	 */
	cp->phy_type = FUNC3(cp, cp->dev->dev_addr,
					FUNC0(pdev->devfn));
	if (cp->phy_type & CAS_PHY_SERDES) {
		cp->cas_flags |= CAS_FLAG_1000MB_CAP;
		return 0; /* no more checking needed */
	}

	/* MII */
	cfg = FUNC8(cp->regs + REG_MIF_CFG);
	if (cfg & MIF_CFG_MDIO_1) {
		cp->phy_type = CAS_PHY_MII_MDIO1;
	} else if (cfg & MIF_CFG_MDIO_0) {
		cp->phy_type = CAS_PHY_MII_MDIO0;
	}

	FUNC4(cp, 0);
	FUNC9(PCS_DATAPATH_MODE_MII, cp->regs + REG_PCS_DATAPATH_MODE);

	for (i = 0; i < 32; i++) {
		u32 phy_id;
		int j;

		for (j = 0; j < 3; j++) {
			cp->phy_addr = i;
			phy_id = FUNC5(cp, MII_PHYSID1) << 16;
			phy_id |= FUNC5(cp, MII_PHYSID2);
			if (phy_id && (phy_id != 0xFFFFFFFF)) {
				cp->phy_id = phy_id;
				goto done;
			}
		}
	}
	FUNC6("MII phy did not respond [%08x]\n",
	       FUNC8(cp->regs + REG_MIF_STATE_MACHINE));
	return -1;

done:
	/* see if we can do gigabit */
	cfg = FUNC5(cp, MII_BMSR);
	if ((cfg & CAS_BMSR_1000_EXTEND) &&
	    FUNC5(cp, CAS_MII_1000_EXTEND))
		cp->cas_flags |= CAS_FLAG_1000MB_CAP;
	return 0;
}