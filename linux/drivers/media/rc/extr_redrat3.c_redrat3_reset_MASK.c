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
typedef  int u8 ;
struct usb_device {int dummy; } ;
struct redrat3_dev {struct device* dev; struct usb_device* udev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  RR3_CPUCS_REG_ADDR ; 
 int RR3_DRIVER_MAXLENS ; 
 int /*<<< orphan*/  RR3_IR_IO_LENGTH_FUZZ ; 
 int /*<<< orphan*/  RR3_IR_IO_MAX_LENGTHS ; 
 int /*<<< orphan*/  RR3_IR_IO_MIN_PAUSE ; 
 int /*<<< orphan*/  RR3_IR_IO_PERIODS_MF ; 
 int /*<<< orphan*/  RR3_RESET ; 
 int /*<<< orphan*/  RR3_SET_IR_PARAM ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (size_t const,int /*<<< orphan*/ ) ; 
 int length_fuzz ; 
 int minimum_pause ; 
 int periods_measure_carrier ; 
 int FUNC3 (struct usb_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t const,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct redrat3_dev *rr3)
{
	struct usb_device *udev = rr3->udev;
	struct device *dev = rr3->dev;
	int rc, rxpipe, txpipe;
	u8 *val;
	size_t const len = sizeof(*val);

	rxpipe = FUNC4(udev, 0);
	txpipe = FUNC5(udev, 0);

	val = FUNC2(len, GFP_KERNEL);
	if (!val)
		return;

	*val = 0x01;
	rc = FUNC3(udev, rxpipe, RR3_RESET,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
			     RR3_CPUCS_REG_ADDR, 0, val, len, HZ * 25);
	FUNC0(dev, "reset returned 0x%02x\n", rc);

	*val = length_fuzz;
	rc = FUNC3(udev, txpipe, RR3_SET_IR_PARAM,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			     RR3_IR_IO_LENGTH_FUZZ, 0, val, len, HZ * 25);
	FUNC0(dev, "set ir parm len fuzz %d rc 0x%02x\n", *val, rc);

	*val = (65536 - (minimum_pause * 2000)) / 256;
	rc = FUNC3(udev, txpipe, RR3_SET_IR_PARAM,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			     RR3_IR_IO_MIN_PAUSE, 0, val, len, HZ * 25);
	FUNC0(dev, "set ir parm min pause %d rc 0x%02x\n", *val, rc);

	*val = periods_measure_carrier;
	rc = FUNC3(udev, txpipe, RR3_SET_IR_PARAM,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			     RR3_IR_IO_PERIODS_MF, 0, val, len, HZ * 25);
	FUNC0(dev, "set ir parm periods measure carrier %d rc 0x%02x", *val,
									rc);

	*val = RR3_DRIVER_MAXLENS;
	rc = FUNC3(udev, txpipe, RR3_SET_IR_PARAM,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
			     RR3_IR_IO_MAX_LENGTHS, 0, val, len, HZ * 25);
	FUNC0(dev, "set ir parm max lens %d rc 0x%02x\n", *val, rc);

	FUNC1(val);
}