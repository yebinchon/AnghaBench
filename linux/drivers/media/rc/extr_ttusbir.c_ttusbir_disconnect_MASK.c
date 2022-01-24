#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ttusbir {TYPE_1__* bulk_urb; TYPE_1__** urb; int /*<<< orphan*/  led; int /*<<< orphan*/  rc; struct usb_device* udev; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int NUM_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct ttusbir*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct ttusbir* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ttusbir *tt = FUNC5(intf);
	struct usb_device *udev = tt->udev;
	int i;

	tt->udev = NULL;

	FUNC2(tt->rc);
	FUNC1(&tt->led);
	for (i = 0; i < NUM_URBS; i++) {
		FUNC6(tt->urb[i]);
		FUNC3(udev, 128, tt->urb[i]->transfer_buffer,
						tt->urb[i]->transfer_dma);
		FUNC4(tt->urb[i]);
	}
	FUNC6(tt->bulk_urb);
	FUNC4(tt->bulk_urb);
	FUNC7(intf, NULL);
	FUNC0(tt);
}