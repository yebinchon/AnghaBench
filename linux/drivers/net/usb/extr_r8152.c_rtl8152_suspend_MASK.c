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
struct usb_interface {int dummy; } ;
struct r8152 {int /*<<< orphan*/  control; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct r8152*) ; 
 int FUNC4 (struct r8152*) ; 
 struct r8152* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf, pm_message_t message)
{
	struct r8152 *tp = FUNC5(intf);
	int ret;

	FUNC1(&tp->control);

	if (FUNC0(message))
		ret = FUNC3(tp);
	else
		ret = FUNC4(tp);

	FUNC2(&tp->control);

	return ret;
}