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
typedef  int /*<<< orphan*/  u8 ;
struct go7007_usb {int /*<<< orphan*/  usbdev; TYPE_1__* board; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int GO7007_USB_EZUSB ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct go7007 *go, u8 *data, int len)
{
	struct go7007_usb *usb = go->hpi_context;
	int transferred, pipe;
	int timeout = 500;

	FUNC0("DownloadBuffer sending %d bytes\n", len);

	if (usb->board->flags & GO7007_USB_EZUSB)
		pipe = FUNC2(usb->usbdev, 2);
	else
		pipe = FUNC2(usb->usbdev, 3);

	return FUNC1(usb->usbdev, pipe, data, len,
					&transferred, timeout);
}