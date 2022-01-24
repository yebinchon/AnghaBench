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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  tx_tl; int /*<<< orphan*/  control; TYPE_1__ rtl_ops; int /*<<< orphan*/  flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct r8152*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC17 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *intf)
{
	struct r8152 *tp = FUNC17(intf);
	struct net_device *netdev;
	struct sockaddr sa;

	if (!tp)
		return 0;

	/* reset the MAC adddress in case of policy change */
	if (FUNC1(tp, &sa) >= 0) {
		FUNC12();
		FUNC2 (tp->netdev, &sa, NULL);
		FUNC13();
	}

	netdev = tp->netdev;
	if (!FUNC9(netdev))
		return 0;

	FUNC14(WORK_ENABLE, &tp->flags);
	if (FUNC8(netdev)) {
		FUNC4(&tp->control);
		tp->rtl_ops.enable(tp);
		FUNC11(tp);
		FUNC0(netdev);
		FUNC5(&tp->control);
	}

	FUNC6(&tp->napi);
	FUNC16(&tp->tx_tl);
	FUNC10(netdev);
	FUNC18(tp->intr_urb, GFP_KERNEL);

	if (!FUNC3(&tp->rx_done))
		FUNC7(&tp->napi);

	return 0;
}