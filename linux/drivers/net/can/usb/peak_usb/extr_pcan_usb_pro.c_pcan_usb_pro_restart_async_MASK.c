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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int dummy; } ;
struct peak_usb_device {int /*<<< orphan*/  udev; int /*<<< orphan*/  ctrl_idx; } ;
struct pcan_usb_pro_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCAN_USBPRO_EP_CMDOUT ; 
 int /*<<< orphan*/  PCAN_USBPRO_SETBUSACT ; 
 int /*<<< orphan*/  PCAN_USB_MAX_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcan_usb_pro_restart_complete ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct peak_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct peak_usb_device *dev,
				      struct urb *urb, u8 *buf)
{
	struct pcan_usb_pro_msg um;

	FUNC1(&um, buf, PCAN_USB_MAX_CMD_LEN);
	FUNC0(&um, PCAN_USBPRO_SETBUSACT, dev->ctrl_idx, 1);

	FUNC2(urb, dev->udev,
			FUNC3(dev->udev, PCAN_USBPRO_EP_CMDOUT),
			buf, PCAN_USB_MAX_CMD_LEN,
			pcan_usb_pro_restart_complete, dev);

	return FUNC4(urb, GFP_ATOMIC);
}