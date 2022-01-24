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
typedef  int /*<<< orphan*/  u32 ;
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  last_event; struct af9005_device_state* priv; } ;
struct af9005_device_state {int* data; int /*<<< orphan*/  sequence; } ;

/* Variables and functions */
 int EIO ; 
 int REMOTE_KEY_REPEAT ; 
 int REMOTE_NO_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/  (*) (char*,int,int /*<<< orphan*/ )) ; 
 int FUNC2 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dvb_usb_device*,int*,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_device *d, u32 * event, int *state)
{
	struct af9005_device_state *st = d->priv;
	int ret, len;
	u8 seq;

	*state = REMOTE_NO_KEY_PRESSED;
	if (&rc_decode == NULL) {
		/* it shouldn't never come here */
		return 0;
	}

	FUNC4(&d->data_mutex);

	/* deb_info("rc_query\n"); */
	st->data[0] = 3;		/* rest of packet length low */
	st->data[1] = 0;		/* rest of packet length high */
	st->data[2] = 0x40;		/* read remote */
	st->data[3] = 1;		/* rest of packet length */
	st->data[4] = seq = st->sequence++;	/* sequence number */
	ret = FUNC2(d, st->data, 5, st->data, 256, 0);
	if (ret) {
		FUNC3("rc query failed");
		goto ret;
	}
	if (st->data[2] != 0x41) {
		FUNC3("rc query bad header.");
		ret = -EIO;
		goto ret;
	} else if (st->data[4] != seq) {
		FUNC3("rc query bad sequence.");
		ret = -EIO;
		goto ret;
	}
	len = st->data[5];
	if (len > 246) {
		FUNC3("rc query invalid length");
		ret = -EIO;
		goto ret;
	}
	if (len > 0) {
		FUNC0("rc data (%d) ", len);
		FUNC1((st->data + 6), len, deb_rc);
		ret = FUNC6(d, &st->data[6], len, event, state);
		if (ret) {
			FUNC3("rc_decode failed");
			goto ret;
		} else {
			FUNC0("rc_decode state %x event %x\n", *state, *event);
			if (*state == REMOTE_KEY_REPEAT)
				*event = d->last_event;
		}
	}

ret:
	FUNC5(&d->data_mutex);
	return ret;
}