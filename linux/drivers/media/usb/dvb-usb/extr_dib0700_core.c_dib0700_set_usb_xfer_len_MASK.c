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
typedef  int u16 ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; int* buf; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 int REQUEST_SET_USB_XFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, u16 nb_ts_packets)
{
	struct dib0700_state *st = d->priv;
	int ret;

	if (st->fw_version >= 0x10201) {
		if (FUNC3(&d->usb_mutex) < 0) {
			FUNC2("could not acquire lock");
			return -EINTR;
		}

		st->buf[0] = REQUEST_SET_USB_XFER_LEN;
		st->buf[1] = (nb_ts_packets >> 8) & 0xff;
		st->buf[2] = nb_ts_packets & 0xff;

		FUNC0("set the USB xfer len to %i Ts packet\n", nb_ts_packets);

		ret = FUNC1(d, st->buf, 3);
		FUNC4(&d->usb_mutex);
	} else {
		FUNC0("this firmware does not allow to change the USB xfer len\n");
		ret = -EIO;
	}

	return ret;
}