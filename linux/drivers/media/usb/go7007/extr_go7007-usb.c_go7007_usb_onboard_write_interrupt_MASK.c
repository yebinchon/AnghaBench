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
struct go7007 {int* usb_buf; int /*<<< orphan*/  dev; struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct go7007 *go,
						int addr, int data)
{
	struct go7007_usb *usb = go->hpi_context;
	int r;
	int timeout = 500;

	FUNC1("WriteInterrupt: %04x %04x\n", addr, data);

	go->usb_buf[0] = data & 0xff;
	go->usb_buf[1] = data >> 8;
	go->usb_buf[2] = addr & 0xff;
	go->usb_buf[3] = addr >> 8;
	go->usb_buf[4] = go->usb_buf[5] = go->usb_buf[6] = go->usb_buf[7] = 0;
	r = FUNC2(usb->usbdev, FUNC3(usb->usbdev, 2), 0x00,
			USB_TYPE_VENDOR | USB_RECIP_ENDPOINT, 0x55aa,
			0xf0f0, go->usb_buf, 8, timeout);
	if (r < 0) {
		FUNC0(go->dev, "error in WriteInterrupt: %d\n", r);
		return r;
	}
	return 0;
}