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
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;
struct hp100_private {int mode; scalar_t__ lan_type; } ;

/* Variables and functions */
 int HP100_ADV_NXT_PKT ; 
 int HP100_BM_READ ; 
 int HP100_BM_WRITE ; 
 int HP100_DEBUG_EN ; 
 int HP100_EE_EN ; 
 int HP100_FAKE_INT ; 
 int HP100_INT_EN ; 
 int HP100_IO_EN ; 
 scalar_t__ HP100_LAN_100 ; 
 scalar_t__ HP100_LAN_ERR ; 
 int HP100_MEM_EN ; 
 int HP100_MMAP_DIS ; 
 int HP100_PRIORITY_TX ; 
 int HP100_RESET_HB ; 
 int HP100_RESET_LB ; 
 int HP100_RX_EN ; 
 int HP100_RX_HDR ; 
 int HP100_SET_HB ; 
 int HP100_TRI_INT ; 
 int HP100_TX_CMD ; 
 int HP100_TX_EN ; 
 int /*<<< orphan*/  IRQ_MASK ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  MAC_CFG_1 ; 
 int /*<<< orphan*/  MAC_CTRL ; 
 int /*<<< orphan*/  OPTION_LSW ; 
 int /*<<< orphan*/  OPTION_MSW ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct hp100_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	struct hp100_private *lp = FUNC9(dev);

#ifdef HP100_DEBUG_B
	hp100_outw(0x4202, TRACE);
	printk("hp100: %s: hwinit\n", dev->name);
#endif

	/* Initialise the card. -------------------------------------------- */

	/* Clear all pending Ints and disable Ints */
	FUNC8(PERFORMANCE);
	FUNC7(0xfefe, IRQ_MASK);	/* mask off all ints */
	FUNC7(0xffff, IRQ_STATUS);	/* clear all pending ints */

	FUNC7(HP100_INT_EN | HP100_RESET_LB, OPTION_LSW);
	FUNC7(HP100_TRI_INT | HP100_SET_HB, OPTION_LSW);

	if (lp->mode == 1) {
		FUNC0(dev);	/* disables BM, puts cascade in reset */
		FUNC11();
	} else {
		FUNC7(HP100_INT_EN | HP100_RESET_LB, OPTION_LSW);
		FUNC2(dev, 1);
		FUNC8(MAC_CTRL);
		FUNC1(~(HP100_RX_EN | HP100_TX_EN), MAC_CFG_1);
	}

	/* Initiate EEPROM reload */
	FUNC3(dev, 0);

	FUNC11();

	/* Go into reset again. */
	FUNC2(dev, 1);

	/* Set Option Registers to a safe state  */
	FUNC7(HP100_DEBUG_EN |
		   HP100_RX_HDR |
		   HP100_EE_EN |
		   HP100_BM_WRITE |
		   HP100_BM_READ | HP100_RESET_HB |
		   HP100_FAKE_INT |
		   HP100_INT_EN |
		   HP100_MEM_EN |
		   HP100_IO_EN | HP100_RESET_LB, OPTION_LSW);

	FUNC7(HP100_TRI_INT |
		   HP100_MMAP_DIS | HP100_SET_HB, OPTION_LSW);

	FUNC6(HP100_PRIORITY_TX |
		   HP100_ADV_NXT_PKT |
		   HP100_TX_CMD | HP100_RESET_LB, OPTION_MSW);

	/* TODO: Configure MMU for Ram Test. */
	/* TODO: Ram Test. */

	/* Re-check if adapter is still at same i/o location      */
	/* (If the base i/o in eeprom has been changed but the    */
	/* registers had not been changed, a reload of the eeprom */
	/* would move the adapter to the address stored in eeprom */

	/* TODO: Code to implement. */

	/* Until here it was code from HWdiscover procedure. */
	/* Next comes code from mmuinit procedure of SCO BM driver which is
	 * called from HWconfigure in the SCO driver.  */

	/* Initialise MMU, eventually switch on Busmaster Mode, initialise
	 * multicast filter...
	 */
	FUNC5(dev);

	/* We don't turn the interrupts on here - this is done by start_interface. */
	FUNC11();			/* TODO: Do we really need this? */

	/* Enable Hardware (e.g. unreset) */
	FUNC2(dev, 0);

	/* ------- initialisation complete ----------- */

	/* Finally try to log in the Hub if there may be a VG connection. */
	if ((lp->lan_type == HP100_LAN_100) || (lp->lan_type == HP100_LAN_ERR))
		FUNC4(dev, 0);	/* relogin */

}