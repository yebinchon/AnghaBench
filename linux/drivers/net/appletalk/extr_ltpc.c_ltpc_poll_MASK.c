#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;

/* Variables and functions */
 int DEBUG_VERBOSE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int ltpc_poll_counter ; 
 TYPE_1__ ltpc_timer ; 
 int /*<<< orphan*/  ltpc_timer_dev ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *unused)
{
	FUNC1(&ltpc_timer);

	if(debug & DEBUG_VERBOSE) {
		if (!ltpc_poll_counter) {
			ltpc_poll_counter = 50;
			FUNC3("ltpc poll is alive\n");
		}
		ltpc_poll_counter--;
	}

	/* poll 20 times per second */
	FUNC2(ltpc_timer_dev);
	ltpc_timer.expires = jiffies + HZ/20;
	FUNC0(&ltpc_timer);
}