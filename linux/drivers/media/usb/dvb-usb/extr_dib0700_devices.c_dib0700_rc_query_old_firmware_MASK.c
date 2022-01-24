#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {TYPE_1__ core; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; TYPE_3__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; scalar_t__* buf; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int EIO ; 
#define  RC_PROTO_BIT_NEC 128 
 int RC_PROTO_NEC ; 
 int RC_PROTO_RC5 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ REQUEST_POLL_RC ; 
 int FUNC2 (struct dvb_usb_device*,scalar_t__*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_device *d)
{
	enum rc_proto protocol;
	u32 scancode;
	u8 toggle;
	int i;
	struct dib0700_state *st = d->priv;

	if (st->fw_version >= 0x10200) {
		/* For 1.20 firmware , We need to keep the RC polling
		   callback so we can reuse the input device setup in
		   dvb-usb-remote.c.  However, the actual work is being done
		   in the bulk URB completion handler. */
		return 0;
	}

	st->buf[0] = REQUEST_POLL_RC;
	st->buf[1] = 0;

	i = FUNC2(d, st->buf, 2, st->buf, 4);
	if (i <= 0) {
		FUNC4("RC Query Failed");
		return -EIO;
	}

	/* losing half of KEY_0 events from Philipps rc5 remotes.. */
	if (st->buf[0] == 0 && st->buf[1] == 0
	    && st->buf[2] == 0 && st->buf[3] == 0)
		return 0;

	/* info("%d: %2X %2X %2X %2X",dvb_usb_dib0700_ir_proto,(int)st->buf[3 - 2],(int)st->buf[3 - 3],(int)st->buf[3 - 1],(int)st->buf[3]);  */

	FUNC3(d, NULL); /* reset ir sensor data to prevent false events */

	switch (d->props.rc.core.protocol) {
	case RC_PROTO_BIT_NEC:
		/* NEC protocol sends repeat code as 0 0 0 FF */
		if ((st->buf[3 - 2] == 0x00) && (st->buf[3 - 3] == 0x00) &&
		    (st->buf[3] == 0xff)) {
			FUNC6(d->rc_dev);
			return 0;
		}

		protocol = RC_PROTO_NEC;
		scancode = FUNC0(st->buf[3 - 2], st->buf[3 - 3]);
		toggle = 0;
		break;

	default:
		/* RC-5 protocol changes toggle bit on new keypress */
		protocol = RC_PROTO_RC5;
		scancode = FUNC1(st->buf[3 - 2], st->buf[3 - 3]);
		toggle = st->buf[3 - 1];
		break;
	}

	FUNC5(d->rc_dev, protocol, scancode, toggle);
	return 0;
}