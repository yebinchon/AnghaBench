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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct local_info {int /*<<< orphan*/  tx_timeout_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct local_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    struct local_info *lp = FUNC1(dev);
    dev->stats.tx_errors++;
    FUNC0(dev, "transmit timed out\n");
    FUNC2(&lp->tx_timeout_task);
}