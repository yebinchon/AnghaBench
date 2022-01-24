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
typedef  int /*<<< orphan*/  u16 ;
struct peak_usb_device {int /*<<< orphan*/  cmd_buf; } ;
struct pcan_usb_pro_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_USBPRO_SETTS ; 
 int /*<<< orphan*/  PCAN_USB_MAX_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct peak_usb_device*,struct pcan_usb_pro_msg*) ; 

__attribute__((used)) static int FUNC3(struct peak_usb_device *dev, u16 onoff)
{
	struct pcan_usb_pro_msg um;

	FUNC1(&um, dev->cmd_buf, PCAN_USB_MAX_CMD_LEN);
	FUNC0(&um, PCAN_USBPRO_SETTS, onoff);

	return FUNC2(dev, &um);
}