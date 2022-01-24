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
struct peak_usb_device {int state; scalar_t__ cmd_buf; int /*<<< orphan*/  netdev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 scalar_t__ PCAN_USB_CMD_ARGS ; 
 int /*<<< orphan*/  PCAN_USB_CMD_ARGS_LEN ; 
 int /*<<< orphan*/  PCAN_USB_CMD_LEN ; 
 int /*<<< orphan*/  PCAN_USB_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  PCAN_USB_EP_CMDIN ; 
 int PCAN_USB_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct peak_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct peak_usb_device *dev, u8 f, u8 n, u8 *p)
{
	int err;
	int actual_length;

	/* usb device unregistered? */
	if (!(dev->state & PCAN_USB_STATE_CONNECTED))
		return 0;

	/* first, send command */
	err = FUNC2(dev, f, n, NULL);
	if (err)
		return err;

	err = FUNC3(dev->udev,
		FUNC4(dev->udev, PCAN_USB_EP_CMDIN),
		dev->cmd_buf, PCAN_USB_CMD_LEN, &actual_length,
		PCAN_USB_COMMAND_TIMEOUT);
	if (err)
		FUNC1(dev->netdev,
			"waiting rsp f=0x%x n=0x%x failure: %d\n", f, n, err);
	else if (p)
		FUNC0(p, dev->cmd_buf + PCAN_USB_CMD_ARGS,
			PCAN_USB_CMD_ARGS_LEN);

	return err;
}