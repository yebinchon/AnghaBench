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
typedef  int u16 ;
struct go7007_usb {int /*<<< orphan*/  usbdev; } ;
struct go7007 {int /*<<< orphan*/  dev; int /*<<< orphan*/ * usb_buf; struct go7007_usb* hpi_context; } ;
typedef  int /*<<< orphan*/  status_reg ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_STATUS_ADDR ; 
 int /*<<< orphan*/  INT_INDEX_ADDR ; 
 int /*<<< orphan*/  INT_PARAM_ADDR ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct go7007 *go,
						int addr, int data)
{
	struct go7007_usb *usb = go->hpi_context;
	int i, r;
	u16 status_reg = 0;
	int timeout = 500;

	FUNC3("WriteInterrupt: %04x %04x\n", addr, data);

	for (i = 0; i < 100; ++i) {
		r = FUNC4(usb->usbdev,
				FUNC5(usb->usbdev, 0), 0x14,
				USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
				0, HPI_STATUS_ADDR, go->usb_buf,
				sizeof(status_reg), timeout);
		if (r < 0)
			break;
		status_reg = FUNC1(*((__le16 *)go->usb_buf));
		if (!(status_reg & 0x0010))
			break;
		FUNC2(10);
	}
	if (r < 0)
		goto write_int_error;
	if (i == 100) {
		FUNC0(go->dev, "device is hung, status reg = 0x%04x\n", status_reg);
		return -1;
	}
	r = FUNC4(usb->usbdev, FUNC6(usb->usbdev, 0), 0x12,
			USB_TYPE_VENDOR | USB_RECIP_DEVICE, data,
			INT_PARAM_ADDR, NULL, 0, timeout);
	if (r < 0)
		goto write_int_error;
	r = FUNC4(usb->usbdev, FUNC6(usb->usbdev, 0),
			0x12, USB_TYPE_VENDOR | USB_RECIP_DEVICE, addr,
			INT_INDEX_ADDR, NULL, 0, timeout);
	if (r < 0)
		goto write_int_error;
	return 0;

write_int_error:
	FUNC0(go->dev, "error in WriteInterrupt: %d\n", r);
	return r;
}