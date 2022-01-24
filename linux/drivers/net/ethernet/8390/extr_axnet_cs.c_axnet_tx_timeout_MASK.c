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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;
struct ei_device {int interface_num; int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 scalar_t__ EN0_ISR ; 
 scalar_t__ EN0_TSR ; 
 int ENTSR_ABT ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,char*,int,int,int) ; 
 struct ei_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	long e8390_base = dev->base_addr;
	struct ei_device *ei_local = FUNC5(dev);
	int txsr, isr, tickssofar = jiffies - FUNC1(dev);
	unsigned long flags;

	dev->stats.tx_errors++;

	FUNC7(&ei_local->page_lock, flags);
	txsr = FUNC3(e8390_base+EN0_TSR);
	isr = FUNC3(e8390_base+EN0_ISR);
	FUNC8(&ei_local->page_lock, flags);

	FUNC4(dev, "Tx timed out, %s TSR=%#2x, ISR=%#2x, t=%d.\n",
		   (txsr & ENTSR_ABT) ? "excess collisions." :
		   (isr) ? "lost interrupt?" : "cable problem?",
		   txsr, isr, tickssofar);

	if (!isr && !dev->stats.tx_packets) 
	{
		/* The 8390 probably hasn't gotten on the cable yet. */
		ei_local->interface_num ^= 1;   /* Try a different xcvr.  */
	}

	/* Ugly but a reset can be slow, yet must be protected */
		
	FUNC7(&ei_local->page_lock, flags);
		
	/* Try to restart the card.  Perhaps the user has fixed something. */
	FUNC2(dev);
	FUNC0(dev, 1);
		
	FUNC8(&ei_local->page_lock, flags);
	FUNC6(dev);
}