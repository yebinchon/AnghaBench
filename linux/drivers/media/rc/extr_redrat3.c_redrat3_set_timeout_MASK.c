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
struct redrat3_dev {struct device* dev; struct usb_device* udev; } ;
struct rc_dev {struct redrat3_dev* priv; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  RR3_IR_IO_SIG_TIMEOUT ; 
 int /*<<< orphan*/  RR3_SET_IR_PARAM ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rc_dev *rc_dev, unsigned int timeoutns)
{
	struct redrat3_dev *rr3 = rc_dev->priv;
	struct usb_device *udev = rr3->udev;
	struct device *dev = rr3->dev;
	__be32 *timeout;
	int ret;

	timeout = FUNC4(sizeof(*timeout), GFP_KERNEL);
	if (!timeout)
		return -ENOMEM;

	*timeout = FUNC1(FUNC5(timeoutns / 1000));
	ret = FUNC6(udev, FUNC7(udev, 0), RR3_SET_IR_PARAM,
		     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
		     RR3_IR_IO_SIG_TIMEOUT, 0, timeout, sizeof(*timeout),
		     HZ * 25);
	FUNC2(dev, "set ir parm timeout %d ret 0x%02x\n",
						FUNC0(*timeout), ret);

	if (ret == sizeof(*timeout))
		ret = 0;
	else if (ret >= 0)
		ret = -EIO;

	FUNC3(timeout);

	return ret;
}