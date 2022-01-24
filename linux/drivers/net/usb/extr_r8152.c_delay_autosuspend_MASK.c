#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ (* in_nway ) (struct r8152*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct r8152 {int /*<<< orphan*/  tx_queue; TYPE_2__ rtl_ops; TYPE_1__ schedule; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct r8152*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct r8152 *tp)
{
	bool sw_linking = !!FUNC0(tp->netdev);
	bool hw_linking = !!(FUNC1(tp) & LINK_STATUS);

	/* This means a linking change occurs and the driver doesn't detect it,
	 * yet. If the driver has disabled tx/rx and hw is linking on, the
	 * device wouldn't wake up by receiving any packet.
	 */
	if (FUNC4(&tp->schedule.work) || sw_linking != hw_linking)
		return true;

	/* If the linking down is occurred by nway, the device may miss the
	 * linking change event. And it wouldn't wake when linking on.
	 */
	if (!sw_linking && tp->rtl_ops.in_nway(tp))
		return true;
	else if (!FUNC2(&tp->tx_queue))
		return true;
	else
		return false;
}