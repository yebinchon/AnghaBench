#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mace_stats; } ;
typedef  TYPE_1__ mace_private ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device_stats*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
  mace_private *lp = FUNC0(dev);

  FUNC4(dev->base_addr, dev);

  FUNC1("%s: updating the statistics.\n", dev->name);
  FUNC2(&dev->stats);
  FUNC3(&lp->mace_stats);

  return &dev->stats;
}