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
struct peak_usb_device {int state; int /*<<< orphan*/  netdev; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rec_buffer; } ;
struct pcan_usb_pro_msg {int /*<<< orphan*/  rec_buffer_len; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_USBPRO_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  PCAN_USBPRO_EP_CMDOUT ; 
 int PCAN_USB_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct peak_usb_device *dev,
				 struct pcan_usb_pro_msg *pum)
{
	int actual_length;
	int err;

	/* usb device unregistered? */
	if (!(dev->state & PCAN_USB_STATE_CONNECTED))
		return 0;

	err = FUNC1(dev->udev,
		FUNC2(dev->udev, PCAN_USBPRO_EP_CMDOUT),
		pum->u.rec_buffer, pum->rec_buffer_len,
		&actual_length, PCAN_USBPRO_COMMAND_TIMEOUT);
	if (err)
		FUNC0(dev->netdev, "sending command failure: %d\n", err);

	return err;
}