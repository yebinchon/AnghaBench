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
struct gp8psk_state {int /*<<< orphan*/  data; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  udev; struct gp8psk_state* priv; } ;

/* Variables and functions */
 int EIO ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d, u8 req, u16 value,
			     u16 index, u8 *b, int blen)
{
	struct gp8psk_state *st = d->priv;
	int ret;

	FUNC0("out: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
	FUNC1(b,blen,deb_xfer);

	if (blen > sizeof(st->data))
		return -EIO;

	if ((ret = FUNC3(&d->usb_mutex)))
		return ret;

	FUNC2(st->data, b, blen);
	if (FUNC5(d->udev,
			FUNC6(d->udev,0),
			req,
			USB_TYPE_VENDOR | USB_DIR_OUT,
			value, index, st->data, blen,
			2000) != blen) {
		FUNC7("usb out operation failed.");
		ret = -EIO;
	} else
		ret = 0;
	FUNC4(&d->usb_mutex);

	return ret;
}