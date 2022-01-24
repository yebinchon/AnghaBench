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
struct pcnet32_rx_head {void* status; void* buf_length; } ;
struct pcnet32_private {int cur_rx; int rx_mod_mask; struct pcnet32_rx_head* rx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NEG_BUF_SIZE ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 struct pcnet32_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct pcnet32_private*,struct pcnet32_rx_head*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int budget)
{
	struct pcnet32_private *lp = FUNC2(dev);
	int entry = lp->cur_rx & lp->rx_mod_mask;
	struct pcnet32_rx_head *rxp = &lp->rx_ring[entry];
	int npackets = 0;

	/* If we own the next entry, it's a new packet. Send it up. */
	while (npackets < budget && (short)FUNC1(rxp->status) >= 0) {
		FUNC3(dev, lp, rxp, entry);
		npackets += 1;
		/*
		 * The docs say that the buffer length isn't touched, but Andrew
		 * Boyd of QNX reports that some revs of the 79C965 clear it.
		 */
		rxp->buf_length = FUNC0(NEG_BUF_SIZE);
		FUNC4();	/* Make sure owner changes after others are visible */
		rxp->status = FUNC0(0x8000);
		entry = (++lp->cur_rx) & lp->rx_mod_mask;
		rxp = &lp->rx_ring[entry];
	}

	return npackets;
}