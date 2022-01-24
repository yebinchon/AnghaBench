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
struct timer_list {int dummy; } ;
struct pcnet32_private {int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  lock; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCNET32_WATCHDOG_TIMEOUT ; 
 struct pcnet32_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct pcnet32_private* lp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  watchdog_timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct pcnet32_private *lp = FUNC0(lp, t, watchdog_timer);
	struct net_device *dev = lp->dev;
	unsigned long flags;

	/* Print the link status if it has changed */
	FUNC4(&lp->lock, flags);
	FUNC2(dev, 0);
	FUNC5(&lp->lock, flags);

	FUNC1(&lp->watchdog_timer, FUNC3(PCNET32_WATCHDOG_TIMEOUT));
}