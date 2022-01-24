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
struct urb {int dummy; } ;
struct peak_usb_device {TYPE_1__* adapter; } ;
struct TYPE_2__ {int (* dev_restart_async ) (struct peak_usb_device*,struct urb*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCAN_USB_MAX_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct peak_usb_device*) ; 
 int FUNC3 (struct peak_usb_device*,struct urb*,int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static int FUNC6(struct peak_usb_device *dev)
{
	struct urb *urb;
	int err;
	u8 *buf;

	/*
	 * if device doesn't define any asynchronous restart handler, simply
	 * wake the netdev queue up
	 */
	if (!dev->adapter->dev_restart_async) {
		FUNC2(dev);
		return 0;
	}

	/* first allocate a urb to handle the asynchronous steps */
	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	/* also allocate enough space for the commands to send */
	buf = FUNC1(PCAN_USB_MAX_CMD_LEN, GFP_ATOMIC);
	if (!buf) {
		FUNC5(urb);
		return -ENOMEM;
	}

	/* call the device specific handler for the restart */
	err = dev->adapter->dev_restart_async(dev, urb, buf);
	if (!err)
		return 0;

	FUNC0(buf);
	FUNC5(urb);

	return err;
}