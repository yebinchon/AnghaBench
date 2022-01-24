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
struct urb {scalar_t__ actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct peak_usb_device {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCAN_USB_MSG_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct peak_usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct peak_usb_device *dev, struct urb *urb)
{
	int err = 0;

	if (urb->actual_length > PCAN_USB_MSG_HEADER_LEN) {
		err = FUNC1(dev, urb->transfer_buffer,
			urb->actual_length);

	} else if (urb->actual_length > 0) {
		FUNC0(dev->netdev, "usb message length error (%u)\n",
			urb->actual_length);
		err = -EINVAL;
	}

	return err;
}