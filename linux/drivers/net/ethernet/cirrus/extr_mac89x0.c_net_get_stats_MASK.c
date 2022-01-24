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
struct net_device_stats {int rx_missed_errors; int collisions; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  PP_RxMiss ; 
 int /*<<< orphan*/  PP_TxCol ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device_stats *
FUNC3(struct net_device *dev)
{
	unsigned long flags;

	FUNC1(flags);
	/* Update the statistics from the device registers. */
	dev->stats.rx_missed_errors += (FUNC2(dev, PP_RxMiss) >> 6);
	dev->stats.collisions += (FUNC2(dev, PP_TxCol) >> 6);
	FUNC0(flags);

	return &dev->stats;
}