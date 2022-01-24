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
struct mceusb_dev {int /*<<< orphan*/  urb_in; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mceusb_dev* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, pm_message_t message)
{
	struct mceusb_dev *ir = FUNC1(intf);
	FUNC0(ir->dev, "suspend");
	FUNC2(ir->urb_in);
	return 0;
}