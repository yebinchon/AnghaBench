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
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct em28xx {int /*<<< orphan*/  ctrl_urb_lock; int /*<<< orphan*/  urb_buf; scalar_t__ disconnected; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  HZ ; 
 int URB_MAX_CTRL_SIZE ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,...) ; 
 struct usb_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usb_device*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

int FUNC8(struct em28xx *dev, u8 req, u16 reg,
			    char *buf, int len)
{
	int ret;
	struct usb_device *udev = FUNC1(dev->intf);
	int pipe = FUNC6(udev, 0);

	if (dev->disconnected)
		return -ENODEV;

	if (len > URB_MAX_CTRL_SIZE)
		return -EINVAL;

	FUNC3(&dev->ctrl_urb_lock);
	ret = FUNC5(udev, pipe, req,
			      USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			      0x0000, reg, dev->urb_buf, len, HZ);
	if (ret < 0) {
		FUNC0("(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x  failed with error %i\n",
			      pipe,
			      USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			      req, 0, 0,
			      reg & 0xff, reg >> 8,
			      len & 0xff, len >> 8, ret);
		FUNC4(&dev->ctrl_urb_lock);
		return FUNC7(ret);
	}

	if (len)
		FUNC2(buf, dev->urb_buf, len);

	FUNC4(&dev->ctrl_urb_lock);

	FUNC0("(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x <<< %*ph\n",
		      pipe, USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
		      req, 0, 0,
		      reg & 0xff, reg >> 8,
		      len & 0xff, len >> 8, len, buf);

	return ret;
}