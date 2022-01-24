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
struct redrat3_dev {int /*<<< orphan*/  led; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct redrat3_dev*,struct usb_device*) ; 
 struct redrat3_dev* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct usb_device *udev = FUNC0(intf);
	struct redrat3_dev *rr3 = FUNC4(intf);

	FUNC5(intf, NULL);
	FUNC2(rr3->rc);
	FUNC1(&rr3->led);
	FUNC3(rr3, udev);
}