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
struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev,
					__u16 req, __u16 index, __u16 value)
{
	int ret;
	struct usb_device *dev = gspca_dev->dev;

	ret = FUNC2(dev,
			FUNC3(dev, 0),
			req,
			USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			value, index, NULL, 0, 500);
	FUNC0(gspca_dev, D_USBO, "reg write: 0x%02x 0x%02x 0x%02x\n",
		  req, index, value);
	if (ret < 0)
		FUNC1("reg write: error %d\n", ret);
	return ret;
}