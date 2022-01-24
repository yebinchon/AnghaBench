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
struct r8152 {int /*<<< orphan*/  control; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SELECTIVE_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct r8152*) ; 
 int FUNC3 (struct r8152*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct r8152* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct r8152 *tp = FUNC5(intf);
	int ret;

	FUNC0(&tp->control);

	if (FUNC4(SELECTIVE_SUSPEND, &tp->flags))
		ret = FUNC2(tp);
	else
		ret = FUNC3(tp);

	FUNC1(&tp->control);

	return ret;
}