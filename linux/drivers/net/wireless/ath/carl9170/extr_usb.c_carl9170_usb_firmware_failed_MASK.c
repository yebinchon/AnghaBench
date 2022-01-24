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
struct usb_device {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  fw_load_wait; struct usb_device* udev; struct usb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  carl9170_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static void FUNC5(struct ar9170 *ar)
{
	/* Store a copies of the usb_interface and usb_device pointer locally.
	 * This is because release_driver initiates carl9170_usb_disconnect,
	 * which in turn frees our driver context (ar).
	 */
	struct usb_interface *intf = ar->intf;
	struct usb_device *udev = ar->udev;

	FUNC0(&ar->fw_load_wait);
	/* at this point 'ar' could be already freed. Don't use it anymore */
	ar = NULL;

	/* unbind anything failed */
	FUNC2(udev);
	FUNC1(&carl9170_driver, intf);
	FUNC4(udev);

	FUNC3(intf);
}