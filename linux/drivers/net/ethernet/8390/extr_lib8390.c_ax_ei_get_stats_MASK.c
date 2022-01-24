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
struct net_device_stats {int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; } ;
struct net_device {unsigned long base_addr; struct net_device_stats stats; } ;
struct ei_device {int /*<<< orphan*/  page_lock; } ;

/* Variables and functions */
 scalar_t__ EN0_COUNTER0 ; 
 scalar_t__ EN0_COUNTER1 ; 
 scalar_t__ EN0_COUNTER2 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct ei_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	unsigned long ioaddr = dev->base_addr;
	struct ei_device *ei_local = FUNC1(dev);
	unsigned long flags;

	/* If the card is stopped, just return the present stats. */
	if (!FUNC2(dev))
		return &dev->stats;

	FUNC3(&ei_local->page_lock, flags);
	/* Read the counter registers, assuming we are in page 0. */
	dev->stats.rx_frame_errors  += FUNC0(ioaddr + EN0_COUNTER0);
	dev->stats.rx_crc_errors    += FUNC0(ioaddr + EN0_COUNTER1);
	dev->stats.rx_missed_errors += FUNC0(ioaddr + EN0_COUNTER2);
	FUNC4(&ei_local->page_lock, flags);

	return &dev->stats;
}