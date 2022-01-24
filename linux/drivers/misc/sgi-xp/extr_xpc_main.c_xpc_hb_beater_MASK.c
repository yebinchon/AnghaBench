#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* increment_heartbeat ) () ;} ;
struct TYPE_4__ {scalar_t__ expires; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 TYPE_2__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_hb_check_timeout ; 
 int xpc_hb_interval ; 
 TYPE_1__ xpc_hb_timer ; 

__attribute__((used)) static void
FUNC4(struct timer_list *unused)
{
	xpc_arch_ops.increment_heartbeat();

	if (FUNC2(xpc_hb_check_timeout))
		FUNC3(&xpc_activate_IRQ_wq);

	xpc_hb_timer.expires = jiffies + (xpc_hb_interval * HZ);
	FUNC0(&xpc_hb_timer);
}