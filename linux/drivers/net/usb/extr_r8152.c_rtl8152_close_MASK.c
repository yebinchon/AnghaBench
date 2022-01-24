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
struct TYPE_2__ {int /*<<< orphan*/  (* down ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; TYPE_1__ rtl_ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  schedule; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_tl; int /*<<< orphan*/  pm_notifier; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev)
{
	struct r8152 *tp = FUNC6(netdev);
	int res = 0;

#ifdef CONFIG_PM_SLEEP
	unregister_pm_notifier(&tp->pm_notifier);
#endif
	FUNC11(&tp->tx_tl);
	FUNC5(&tp->napi);
	FUNC1(WORK_ENABLE, &tp->flags);
	FUNC16(tp->intr_urb);
	FUNC0(&tp->schedule);
	FUNC7(netdev);

	res = FUNC14(tp->intf);
	if (res < 0 || FUNC12(RTL8152_UNPLUG, &tp->flags)) {
		FUNC8(tp);
		FUNC9(tp);
	} else {
		FUNC3(&tp->control);

		tp->rtl_ops.down(tp);

		FUNC4(&tp->control);

		FUNC15(tp->intf);
	}

	FUNC2(tp);

	return res;
}