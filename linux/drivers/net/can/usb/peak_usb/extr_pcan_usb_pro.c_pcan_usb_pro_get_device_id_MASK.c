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
typedef  int /*<<< orphan*/  u32 ;
struct peak_usb_device {int /*<<< orphan*/  ctrl_idx; int /*<<< orphan*/  cmd_buf; } ;
struct pcan_usb_pro_msg {int dummy; } ;
struct pcan_usb_pro_devid {int /*<<< orphan*/  serial_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_USBPRO_GETDEVID ; 
 int /*<<< orphan*/  PCAN_USB_MAX_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct pcan_usb_pro_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct peak_usb_device*,struct pcan_usb_pro_msg*) ; 
 int FUNC4 (struct peak_usb_device*,struct pcan_usb_pro_msg*) ; 

__attribute__((used)) static int FUNC5(struct peak_usb_device *dev,
				      u32 *device_id)
{
	struct pcan_usb_pro_devid *pdn;
	struct pcan_usb_pro_msg um;
	int err;
	u8 *pc;

	pc = FUNC2(&um, dev->cmd_buf, PCAN_USB_MAX_CMD_LEN);
	FUNC1(&um, PCAN_USBPRO_GETDEVID, dev->ctrl_idx);

	err =  FUNC3(dev, &um);
	if (err)
		return err;

	err = FUNC4(dev, &um);
	if (err)
		return err;

	pdn = (struct pcan_usb_pro_devid *)pc;
	if (device_id)
		*device_id = FUNC0(pdn->serial_num);

	return err;
}