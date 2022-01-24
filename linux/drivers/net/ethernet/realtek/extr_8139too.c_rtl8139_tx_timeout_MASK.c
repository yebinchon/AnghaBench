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
struct rtl8139_private {int watchdog_fired; int /*<<< orphan*/  thread; int /*<<< orphan*/  have_thread; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl8139_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  next_tick ; 
 int /*<<< orphan*/  rtl8139_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (struct net_device *dev)
{
	struct rtl8139_private *tp = FUNC1(dev);

	tp->watchdog_fired = 1;
	if (!tp->have_thread) {
		FUNC0(&tp->thread, rtl8139_thread);
		FUNC2(&tp->thread, next_tick);
	}
}