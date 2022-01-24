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
struct tulip_private {int /*<<< orphan*/  timer; int /*<<< orphan*/ * phys; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tulip_private* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  timer ; 
 struct tulip_private* tp ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int tulip_debug ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct timer_list *t)
{
	struct tulip_private *tp = FUNC1(tp, t, timer);
	struct net_device *dev = tp->dev;
	int next_tick = 2*HZ;

	if (tulip_debug > 1)
		FUNC3(dev, "Comet link status %04x partner capability %04x\n",
			   FUNC7(dev, tp->phys[0], 1),
			   FUNC7(dev, tp->phys[0], 5));
	/* mod_timer synchronizes us with potential add_timer calls
	 * from interrupts.
	 */
	if (FUNC6(dev) < 0)
		{ FUNC4(dev); }
	else
		{ FUNC5(dev); }
	FUNC2(&tp->timer, FUNC0(next_tick));
}