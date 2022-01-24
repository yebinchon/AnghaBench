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
 int EIO ; 
 int FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dvb_usb_device *d, u8 address, u8 * values,
		       int len)
{
	struct af9005_device_state *st = d->priv;
	u8 seq;
	int ret, i;

	FUNC3(&d->data_mutex);

	FUNC2(st->data, 0, sizeof(st->data));

	st->data[0] = 14;		/* length of rest of packet low */
	st->data[1] = 0;		/* length of rest of packer high */

	st->data[2] = 0x2a;		/* read/write eeprom */

	st->data[3] = 12;		/* size */

	st->data[4] = seq = st->sequence++;

	st->data[5] = 0;		/* read */

	st->data[6] = len;
	st->data[7] = address;
	ret = FUNC0(d, st->data, 16, st->data, 14, 0);
	if (st->data[2] != 0x2b) {
		FUNC1("Read eeprom, invalid reply code");
		ret = -EIO;
	} else if (st->data[3] != 10) {
		FUNC1("Read eeprom, invalid reply length");
		ret = -EIO;
	} else if (st->data[4] != seq) {
		FUNC1("Read eeprom, wrong sequence in reply ");
		ret = -EIO;
	} else if (st->data[5] != 1) {
		FUNC1("Read eeprom, wrong status in reply ");
		ret = -EIO;
	}

	if (!ret) {
		for (i = 0; i < len; i++)
			values[i] = st->data[6 + i];
	}
	FUNC4(&d->data_mutex);

	return ret;
}