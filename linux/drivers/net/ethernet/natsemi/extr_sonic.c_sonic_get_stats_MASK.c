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
struct net_device_stats {int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct sonic_local {struct net_device_stats stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SONIC_CRCT ; 
 int /*<<< orphan*/  SONIC_FAET ; 
 int /*<<< orphan*/  SONIC_MPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sonic_local* FUNC2 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC3(struct net_device *dev)
{
	struct sonic_local *lp = FUNC2(dev);

	/* read the tally counter from the SONIC and reset them */
	lp->stats.rx_crc_errors += FUNC0(SONIC_CRCT);
	FUNC1(SONIC_CRCT, 0xffff);
	lp->stats.rx_frame_errors += FUNC0(SONIC_FAET);
	FUNC1(SONIC_FAET, 0xffff);
	lp->stats.rx_missed_errors += FUNC0(SONIC_MPT);
	FUNC1(SONIC_MPT, 0xffff);

	return &lp->stats;
}