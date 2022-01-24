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
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;
typedef  scalar_t__ s16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQUEST_GET_VERSION ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct usb_device *udev, struct dvb_usb_device_properties *props,
			struct dvb_usb_device_description **desc, int *cold)
{
	s16 ret;
	u8 *b;

	b = FUNC2(16, GFP_KERNEL);
	if (!b)
		return	-ENOMEM;


	ret = FUNC3(udev, FUNC4(udev, 0),
		REQUEST_GET_VERSION, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, b, 16, USB_CTRL_GET_TIMEOUT);

	FUNC0("FW GET_VERSION length: %d\n",ret);

	*cold = ret <= 0;
	FUNC0("cold: %d\n", *cold);

	FUNC1(b);
	return 0;
}