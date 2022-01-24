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
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  udev; int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TH_COMMAND_IN ; 
 int /*<<< orphan*/  TH_COMMAND_OUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct dvb_usb_device *d, u8 cmd, u8 *out, int outlen, u8 *in, int inlen, int msec)
{
	int ret = 0;
	u8 *buf = d->priv;

	buf[0] = cmd;

	if (outlen > 19)
		outlen = 19;

	if (inlen > 11)
		inlen = 11;

	ret = FUNC5(&d->usb_mutex);
	if (ret)
		return ret;

	if (out != NULL && outlen > 0)
		FUNC3(&buf[1], out, outlen);

	FUNC0("out buffer: ");
	FUNC1(buf, outlen+1, deb_xfer);


	if (FUNC7(d->udev,
			FUNC9(d->udev,0),
			TH_COMMAND_OUT, USB_TYPE_VENDOR | USB_DIR_OUT, 0, 0,
			buf, 20, 2000) != 20) {
		FUNC2("USB control message 'out' went wrong.");
		ret = -EIO;
		goto unlock;
	}

	FUNC4(msec);

	if (FUNC7(d->udev,
			FUNC8(d->udev,0),
			TH_COMMAND_IN, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
			buf, 12, 2000) != 12) {
		FUNC2("USB control message 'in' went wrong.");
		ret = -EIO;
		goto unlock;
	}

	FUNC0("in buffer: ");
	FUNC1(buf, 12, deb_xfer);

	if (in != NULL && inlen > 0)
		FUNC3(in, &buf[1], inlen);

unlock:
	FUNC6(&d->usb_mutex);

	return ret;
}