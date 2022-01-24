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
struct go7007_usb {int /*<<< orphan*/  usbdev; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct go7007 *go, int request,
		int value, int index, void *transfer_buffer, int length, int in)
{
	struct go7007_usb *usb = go->hpi_context;
	int timeout = 5000;

	if (in) {
		return FUNC0(usb->usbdev,
				FUNC1(usb->usbdev, 0), request,
				USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
				value, index, transfer_buffer, length, timeout);
	} else {
		return FUNC0(usb->usbdev,
				FUNC2(usb->usbdev, 0), request,
				USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				value, index, transfer_buffer, length, timeout);
	}
}