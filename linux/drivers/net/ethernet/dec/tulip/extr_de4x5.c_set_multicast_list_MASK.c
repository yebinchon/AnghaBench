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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int flags; int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {scalar_t__ state; int tx_new; int txRingSize; int /*<<< orphan*/  setup_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_TPD ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  OMR_PR ; 
 scalar_t__ OPEN ; 
 int PERFECT_F ; 
 int /*<<< orphan*/  POLL_DEMAND ; 
 int SETUP_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int TD_IC ; 
 int TD_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 struct de4x5_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC3(dev);
    u_long iobase = dev->base_addr;

    /* First, double check that the adapter is open */
    if (lp->state == OPEN) {
	if (dev->flags & IFF_PROMISC) {         /* set promiscuous mode */
	    u32 omr;
	    omr = FUNC1(DE4X5_OMR);
	    omr |= OMR_PR;
	    FUNC5(omr, DE4X5_OMR);
	} else {
	    FUNC0(dev);
	    FUNC2(dev, lp->setup_frame, TD_IC | PERFECT_F | TD_SET |
			                                SETUP_FRAME_LEN, (struct sk_buff *)1);

	    lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;
	    FUNC5(POLL_DEMAND, DE4X5_TPD);       /* Start the TX */
	    FUNC4(dev); /* prevent tx timeout */
	}
    }
}