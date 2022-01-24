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
typedef  int u8 ;
typedef  int u16 ;
struct flexcop_usb {int* data; int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  udev; } ;
struct flexcop_i2c_adapter {int port; TYPE_1__* fc; } ;
typedef  int /*<<< orphan*/  flexcop_usb_request_t ;
typedef  int flexcop_usb_i2c_function_t ;
struct TYPE_2__ {struct flexcop_usb* bus_specific; } ;

/* Variables and functions */
 int B2C2_USB_CTRL_PIPE_IN ; 
 int B2C2_USB_CTRL_PIPE_OUT ; 
 int EINVAL ; 
 int EIO ; 
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_ENDPOINT_DIR_MASK ; 
#define  USB_FUNC_I2C_CHECKWRITE 133 
#define  USB_FUNC_I2C_MULTIWRITE 132 
#define  USB_FUNC_I2C_READ 131 
#define  USB_FUNC_I2C_REPEATREAD 130 
#define  USB_FUNC_I2C_REPEATWRITE 129 
#define  USB_FUNC_I2C_WRITE 128 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,int*,int,int) ; 

__attribute__((used)) static int FUNC7(struct flexcop_i2c_adapter *i2c,
		flexcop_usb_request_t req, flexcop_usb_i2c_function_t func,
		u8 chipaddr, u8 addr, u8 *buf, u8 buflen)
{
	struct flexcop_usb *fc_usb = i2c->fc->bus_specific;
	u16 wValue, wIndex;
	int nWaitTime, pipe, ret;
	u8 request_type = USB_TYPE_VENDOR;

	if (buflen > sizeof(fc_usb->data)) {
		FUNC2("Buffer size bigger than max URB control message\n");
		return -EIO;
	}

	switch (func) {
	case USB_FUNC_I2C_WRITE:
	case USB_FUNC_I2C_MULTIWRITE:
	case USB_FUNC_I2C_REPEATWRITE:
		/* DKT 020208 - add this to support special case of DiSEqC */
	case USB_FUNC_I2C_CHECKWRITE:
		pipe = B2C2_USB_CTRL_PIPE_OUT;
		nWaitTime = 2;
		request_type |= USB_DIR_OUT;
		break;
	case USB_FUNC_I2C_READ:
	case USB_FUNC_I2C_REPEATREAD:
		pipe = B2C2_USB_CTRL_PIPE_IN;
		nWaitTime = 2;
		request_type |= USB_DIR_IN;
		break;
	default:
		FUNC1("unsupported function for i2c_req %x\n", func);
		return -EINVAL;
	}
	wValue = (func << 8) | (i2c->port << 4);
	wIndex = (chipaddr << 8 ) | addr;

	FUNC0("i2c %2d: %02x %02x %02x %02x %02x %02x\n",
			func, request_type, req,
			wValue & 0xff, wValue >> 8,
			wIndex & 0xff, wIndex >> 8);

	FUNC4(&fc_usb->data_mutex);

	if ((request_type & USB_ENDPOINT_DIR_MASK) == USB_DIR_OUT)
		FUNC3(fc_usb->data, buf, buflen);

	ret = FUNC6(fc_usb->udev, pipe,
			req,
			request_type,
			wValue,
			wIndex,
			fc_usb->data,
			buflen,
			nWaitTime * HZ);

	if (ret != buflen)
		ret = -EIO;

	if (ret >= 0) {
		ret = 0;
		if ((request_type & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
			FUNC3(buf, fc_usb->data, buflen);
	}

	FUNC5(&fc_usb->data_mutex);

	return 0;
}