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
struct TYPE_2__ {int /*<<< orphan*/  (* unload ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  netdev; TYPE_1__ rtl_ops; int /*<<< orphan*/  hw_phy_work; int /*<<< orphan*/  tx_tl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct r8152* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct r8152 *tp = FUNC6(intf);

	FUNC7(intf, NULL);
	if (tp) {
		FUNC2(tp);

		FUNC5(tp->netdev);
		FUNC4(&tp->tx_tl);
		FUNC0(&tp->hw_phy_work);
		tp->rtl_ops.unload(tp);
		FUNC1(tp->netdev);
	}
}