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
struct net_device {unsigned long base_addr; int* dev_addr; } ;
struct ei_device {int tx_start_page; int rx_start_page; int stop_page; int current_page; scalar_t__ txing; scalar_t__ tx2; scalar_t__ tx1; scalar_t__ bigendian; scalar_t__ word16; } ;
struct e8390_pkt_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_PAGE1 ; 
 int E8390_RXCONFIG ; 
 int E8390_RXOFF ; 
 int E8390_START ; 
 int E8390_STOP ; 
 int E8390_TXCONFIG ; 
 int E8390_TXOFF ; 
 scalar_t__ EN0_BOUNDARY ; 
 scalar_t__ EN0_DCFG ; 
 scalar_t__ EN0_IMR ; 
 scalar_t__ EN0_ISR ; 
 scalar_t__ EN0_RCNTHI ; 
 scalar_t__ EN0_RCNTLO ; 
 scalar_t__ EN0_RXCR ; 
 scalar_t__ EN0_STARTPG ; 
 scalar_t__ EN0_STOPPG ; 
 scalar_t__ EN0_TPSR ; 
 scalar_t__ EN0_TXCR ; 
 scalar_t__ EN1_CURPAG ; 
 scalar_t__ FUNC0 (int) ; 
 int ENDCFG_BOS ; 
 int ENDCFG_WTS ; 
 int ENISR_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct ei_device* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, int startp)
{
	unsigned long e8390_base = dev->base_addr;
	struct ei_device *ei_local = FUNC5(dev);
	int i;
	int endcfg = ei_local->word16
	    ? (0x48 | ENDCFG_WTS | (ei_local->bigendian ? ENDCFG_BOS : 0))
	    : 0x48;

	if (sizeof(struct e8390_pkt_hdr) != 4)
		FUNC7("8390.c: header struct mispacked\n");
	/* Follow National Semi's recommendations for initing the DP83902. */
	FUNC3(E8390_NODMA+E8390_PAGE0+E8390_STOP, e8390_base+E8390_CMD); /* 0x21 */
	FUNC3(endcfg, e8390_base + EN0_DCFG);	/* 0x48 or 0x49 */
	/* Clear the remote byte count registers. */
	FUNC3(0x00,  e8390_base + EN0_RCNTLO);
	FUNC3(0x00,  e8390_base + EN0_RCNTHI);
	/* Set to monitor and loopback mode -- this is vital!. */
	FUNC3(E8390_RXOFF, e8390_base + EN0_RXCR); /* 0x20 */
	FUNC3(E8390_TXOFF, e8390_base + EN0_TXCR); /* 0x02 */
	/* Set the transmit page and receive ring. */
	FUNC3(ei_local->tx_start_page, e8390_base + EN0_TPSR);
	ei_local->tx1 = ei_local->tx2 = 0;
	FUNC3(ei_local->rx_start_page, e8390_base + EN0_STARTPG);
	FUNC3(ei_local->stop_page-1, e8390_base + EN0_BOUNDARY);	/* 3c503 says 0x3f,NS0x26*/
	ei_local->current_page = ei_local->rx_start_page;		/* assert boundary+1 */
	FUNC3(ei_local->stop_page, e8390_base + EN0_STOPPG);
	/* Clear the pending interrupts and mask. */
	FUNC3(0xFF, e8390_base + EN0_ISR);
	FUNC3(0x00,  e8390_base + EN0_IMR);

	/* Copy the station address into the DS8390 registers. */

	FUNC3(E8390_NODMA + E8390_PAGE1 + E8390_STOP, e8390_base+E8390_CMD); /* 0x61 */
	for (i = 0; i < 6; i++) {
		FUNC3(dev->dev_addr[i], e8390_base + FUNC0(i));
		if ((FUNC6(ei_local)) &&
		    FUNC2(e8390_base + FUNC0(i)) != dev->dev_addr[i])
			FUNC4(dev,
				   "Hw. address read/write mismap %d\n", i);
	}

	FUNC3(ei_local->rx_start_page, e8390_base + EN1_CURPAG);
	FUNC3(E8390_NODMA+E8390_PAGE0+E8390_STOP, e8390_base+E8390_CMD);

	ei_local->tx1 = ei_local->tx2 = 0;
	ei_local->txing = 0;

	if (startp) {
		FUNC3(0xff,  e8390_base + EN0_ISR);
		FUNC3(ENISR_ALL,  e8390_base + EN0_IMR);
		FUNC3(E8390_NODMA+E8390_PAGE0+E8390_START, e8390_base+E8390_CMD);
		FUNC3(E8390_TXCONFIG, e8390_base + EN0_TXCR); /* xmit on. */
		/* 3c503 TechMan says rxconfig only after the NIC is started. */
		FUNC3(E8390_RXCONFIG, e8390_base + EN0_RXCR); /* rx on,  */
		FUNC1(dev);	/* (re)load the mcast table */
	}
}