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
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* up ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; TYPE_2__ pm_notifier; int /*<<< orphan*/  tx_tl; int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  flags; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int FUNC0 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  rtl_notifier ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev)
{
	struct r8152 *tp = FUNC5(netdev);
	int res = 0;

	res = FUNC0(tp);
	if (res)
		goto out;

	res = FUNC14(tp->intf);
	if (res < 0)
		goto out_free;

	FUNC2(&tp->control);

	tp->rtl_ops.up(tp);

	FUNC6(netdev);
	FUNC8(netdev);
	FUNC11(WORK_ENABLE, &tp->flags);

	res = FUNC16(tp->intr_urb, GFP_KERNEL);
	if (res) {
		if (res == -ENODEV)
			FUNC7(tp->netdev);
		FUNC9(tp, ifup, netdev, "intr_urb submit failed: %d\n",
			   res);
		goto out_unlock;
	}
	FUNC4(&tp->napi);
	FUNC13(&tp->tx_tl);

	FUNC3(&tp->control);

	FUNC15(tp->intf);
#ifdef CONFIG_PM_SLEEP
	tp->pm_notifier.notifier_call = rtl_notifier;
	register_pm_notifier(&tp->pm_notifier);
#endif
	return 0;

out_unlock:
	FUNC3(&tp->control);
	FUNC15(tp->intf);
out_free:
	FUNC1(tp);
out:
	return res;
}