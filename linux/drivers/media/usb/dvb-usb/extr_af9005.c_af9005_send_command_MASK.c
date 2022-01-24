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
typedef  void* u8 ;
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; struct af9005_device_state* priv; } ;
struct af9005_device_state {int* data; int /*<<< orphan*/  sequence; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dvb_usb_device *d, u8 command, u8 * wbuf,
			int wlen, u8 * rbuf, int rlen)
{
	struct af9005_device_state *st = d->priv;

	int ret, i, packet_len;
	u8 seq;

	if (wlen < 0) {
		FUNC1("send command, wlen less than 0 bytes. Makes no sense.");
		return -EINVAL;
	}
	if (wlen > 54) {
		FUNC1("send command, wlen more than 54 bytes. Not supported.");
		return -EINVAL;
	}
	if (rlen > 54) {
		FUNC1("send command, rlen more than 54 bytes. Not supported.");
		return -EINVAL;
	}
	packet_len = wlen + 5;

	FUNC2(&d->data_mutex);

	st->data[0] = (u8) (packet_len & 0xff);
	st->data[1] = (u8) ((packet_len & 0xff00) >> 8);

	st->data[2] = 0x26;		/* packet type */
	st->data[3] = wlen + 3;
	st->data[4] = seq = st->sequence++;
	st->data[5] = command;
	st->data[6] = wlen;
	for (i = 0; i < wlen; i++)
		st->data[7 + i] = wbuf[i];
	ret = FUNC0(d, st->data, wlen + 7, st->data, rlen + 7, 0);
	if (st->data[2] != 0x27) {
		FUNC1("send command, wrong reply code.");
		ret = -EIO;
	} else if (st->data[4] != seq) {
		FUNC1("send command, wrong sequence in reply.");
		ret = -EIO;
	} else if (st->data[5] != 0x01) {
		FUNC1("send command, wrong status code in reply.");
		ret = -EIO;
	} else if (st->data[6] != rlen) {
		FUNC1("send command, invalid data length in reply.");
		ret = -EIO;
	}
	if (!ret) {
		for (i = 0; i < rlen; i++)
			rbuf[i] = st->data[i + 7];
	}

	FUNC3(&d->data_mutex);
	return ret;
}