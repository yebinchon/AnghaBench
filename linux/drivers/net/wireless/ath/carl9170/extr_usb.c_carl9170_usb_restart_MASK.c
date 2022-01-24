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
struct ar9170 {int cmd_seq; int /*<<< orphan*/  usb_tasklet; TYPE_1__* intf; } ;
struct TYPE_2__ {scalar_t__ condition; } ;

/* Variables and functions */
 scalar_t__ USB_INTERFACE_BOUND ; 
 int FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int FUNC2 (struct ar9170*) ; 
 int FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ar9170 *ar)
{
	int err = 0;

	if (ar->intf->condition != USB_INTERFACE_BOUND)
		return 0;

	/*
	 * Disable the command response sequence counter check.
	 * We already know that the device/firmware is in a bad state.
	 * So, no extra points are awarded to anyone who reminds the
	 * driver about that.
	 */
	ar->cmd_seq = -2;

	err = FUNC0(ar);

	FUNC4(ar);

	if (err)
		goto err_out;

	FUNC6(&ar->usb_tasklet);

	/* The reboot procedure can take quite a while to complete. */
	FUNC5(1100);

	err = FUNC3(ar);
	if (err)
		goto err_out;

	err = FUNC2(ar);
	if (err)
		goto err_out;

	return 0;

err_out:
	FUNC1(ar);
	return err;
}