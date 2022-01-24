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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  control; TYPE_1__ rtl_ops; int /*<<< orphan*/  schedule; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  flags; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_tl; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *intf)
{
	struct r8152 *tp = FUNC10(intf);
	struct net_device *netdev;

	if (!tp)
		return 0;

	netdev = tp->netdev;
	if (!FUNC6(netdev))
		return 0;

	FUNC7(netdev);
	FUNC9(&tp->tx_tl);
	FUNC4(&tp->napi);
	FUNC1(WORK_ENABLE, &tp->flags);
	FUNC11(tp->intr_urb);
	FUNC0(&tp->schedule);
	if (FUNC5(netdev)) {
		FUNC2(&tp->control);
		tp->rtl_ops.disable(tp);
		FUNC3(&tp->control);
	}

	return 0;
}