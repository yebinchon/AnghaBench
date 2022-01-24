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
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct frad_local {TYPE_1__ timer; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDLA_502_RCV_BUF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct frad_local* flp ; 
 struct frad_local* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct frad_local *flp = FUNC1(flp, t, timer);
	struct net_device *dev = flp->dev;

	if (FUNC2(dev, SDLA_502_RCV_BUF))
		FUNC3(dev);

	flp->timer.expires = 1;
	FUNC0(&flp->timer);
}