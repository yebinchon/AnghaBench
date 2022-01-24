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
typedef  int u_int ;
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;
struct hp100_private {int mode; } ;

/* Variables and functions */
 int HP100_HW_RST ; 
 int HP100_INT_EN ; 
 int HP100_MMAP_DIS ; 
 int HP100_RESET_LB ; 
 int HP100_RX_EN ; 
 int HP100_RX_IDLE ; 
 int HP100_SET_HB ; 
 int HP100_TRI_INT ; 
 int HP100_TX_EN ; 
 int HP100_TX_IDLE ; 
 int /*<<< orphan*/  MAC_CFG_1 ; 
 int /*<<< orphan*/  MAC_CTRL ; 
 int /*<<< orphan*/  OPTION_LSW ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct hp100_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct hp100_private *lp = FUNC6(dev);
	int ioaddr = dev->base_addr;
	u_int val;

#ifdef HP100_DEBUG_B
	printk("hp100: %s: hp100_stop_interface\n", dev->name);
	hp100_outw(0x4221, TRACE);
#endif

	if (lp->mode == 1)
		FUNC0(dev);
	else {
		/* Note: MMAP_DIS will be reenabled by start_interface */
		FUNC4(HP100_INT_EN | HP100_RESET_LB |
			   HP100_TRI_INT | HP100_MMAP_DIS | HP100_SET_HB,
			   OPTION_LSW);
		val = FUNC3(OPTION_LSW);

		FUNC5(MAC_CTRL);
		FUNC1(~(HP100_RX_EN | HP100_TX_EN), MAC_CFG_1);

		if (!(val & HP100_HW_RST))
			return;	/* If reset, imm. return ... */
		/* ... else: busy wait until idle */
		for (val = 0; val < 6000; val++)
			if ((FUNC2(MAC_CFG_1) & (HP100_TX_IDLE | HP100_RX_IDLE)) == (HP100_TX_IDLE | HP100_RX_IDLE)) {
				FUNC5(PERFORMANCE);
				return;
			}
		FUNC7("hp100: %s: hp100_stop_interface - timeout\n", dev->name);
		FUNC5(PERFORMANCE);
	}
}