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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DIBUSB_IOCTL_CMD_DISABLE_STREAM ; 
 int DIBUSB_IOCTL_CMD_ENABLE_STREAM ; 
 int DIBUSB_REQ_SET_IOCTL ; 
 int DIBUSB_REQ_SET_STREAMING_MODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_adapter*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct dvb_usb_adapter *adap, int onoff)
{
	int ret;
	u8 *b;

	b = FUNC3(3, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	if ((ret = FUNC0(adap,onoff)) < 0)
		goto ret;

	if (onoff) {
		b[0] = DIBUSB_REQ_SET_STREAMING_MODE;
		b[1] = 0x00;
		ret = FUNC1(adap->dev, b, 2);
		if (ret  < 0)
			goto ret;
	}

	b[0] = DIBUSB_REQ_SET_IOCTL;
	b[1] = onoff ? DIBUSB_IOCTL_CMD_ENABLE_STREAM : DIBUSB_IOCTL_CMD_DISABLE_STREAM;
	ret = FUNC1(adap->dev, b, 3);

ret:
	FUNC2(b);
	return ret;
}