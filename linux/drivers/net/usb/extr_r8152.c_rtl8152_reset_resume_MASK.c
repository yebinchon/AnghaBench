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
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct r8152*) ;} ;
struct r8152 {int /*<<< orphan*/  hw_phy_work; TYPE_1__ rtl_ops; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SELECTIVE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int /*<<< orphan*/  system_long_wq ; 
 struct r8152* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct r8152 *tp = FUNC5(intf);

	FUNC0(SELECTIVE_SUSPEND, &tp->flags);
	tp->rtl_ops.init(tp);
	FUNC1(system_long_wq, &tp->hw_phy_work, 0);
	FUNC3(tp);
	return FUNC2(intf);
}