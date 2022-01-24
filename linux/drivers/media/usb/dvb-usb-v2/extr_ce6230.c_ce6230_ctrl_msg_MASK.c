#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_req {int cmd; int* data; int /*<<< orphan*/  data_len; int /*<<< orphan*/  index; int /*<<< orphan*/  value; } ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE6230_USB_TIMEOUT ; 
#define  DEMOD_READ 133 
#define  DEMOD_WRITE 132 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  I2C_READ 131 
#define  I2C_WRITE 130 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
#define  REG_READ 129 
#define  REG_WRITE 128 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dvb_usb_device *d, struct usb_req *req)
{
	int ret;
	unsigned int pipe;
	u8 request;
	u8 requesttype;
	u16 value;
	u16 index;
	u8 *buf;

	request = req->cmd;
	value = req->value;
	index = req->index;

	switch (req->cmd) {
	case I2C_READ:
	case DEMOD_READ:
	case REG_READ:
		requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
		break;
	case I2C_WRITE:
	case DEMOD_WRITE:
	case REG_WRITE:
		requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
		break;
	default:
		FUNC0(&d->udev->dev, "%s: unknown command=%02x\n",
				KBUILD_MODNAME, req->cmd);
		ret = -EINVAL;
		goto error;
	}

	buf = FUNC3(req->data_len, GFP_KERNEL);
	if (!buf) {
		ret = -ENOMEM;
		goto error;
	}

	if (requesttype == (USB_TYPE_VENDOR | USB_DIR_OUT)) {
		/* write */
		FUNC4(buf, req->data, req->data_len);
		pipe = FUNC8(d->udev, 0);
	} else {
		/* read */
		pipe = FUNC7(d->udev, 0);
	}

	FUNC5(1); /* avoid I2C errors */

	ret = FUNC6(d->udev, pipe, request, requesttype, value, index,
			buf, req->data_len, CE6230_USB_TIMEOUT);

	FUNC1(d->udev, request, requesttype, value, index,
			buf, req->data_len);

	if (ret < 0)
		FUNC0(&d->udev->dev, "%s: usb_control_msg() failed=%d\n",
				KBUILD_MODNAME, ret);
	else
		ret = 0;

	/* read request, copy returned data to return buf */
	if (!ret && requesttype == (USB_TYPE_VENDOR | USB_DIR_IN))
		FUNC4(req->data, buf, req->data_len);

	FUNC2(buf);
error:
	return ret;
}