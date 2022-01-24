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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_device *d, u8 req,
			    u16 value, u16 index, u8 *b, int blen)
{
	int ret = -1;
	if (FUNC2(&d->usb_mutex))
		return -EAGAIN;

	ret = FUNC4(d->udev,
			      FUNC5(d->udev, 0),
			      req,
			      USB_TYPE_VENDOR | USB_DIR_IN,
			      value,
			      index,
			      b,
			      blen,
			      2000);

	if (ret < 0) {
		FUNC6("usb in operation failed. (%d)", ret);
		ret = -EIO;
	} else
		ret = 0;

	FUNC0("in: req. %02x, val: %04x, ind: %04x, buffer: ", req, value, index);
	FUNC1(b, blen, deb_xfer);

	FUNC3(&d->usb_mutex);
	return ret;
}