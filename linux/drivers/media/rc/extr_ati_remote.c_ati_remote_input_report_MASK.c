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
typedef  scalar_t__ u32 ;
struct urb {int actual_length; TYPE_1__* dev; struct ati_remote* context; } ;
struct input_dev {int dummy; } ;
struct ati_remote {unsigned char* inbuf; unsigned long old_jiffies; unsigned char old_data; int repeat_count; unsigned long first_jiffies; TYPE_2__* interface; int /*<<< orphan*/  rdev; struct input_dev* idev; } ;
struct TYPE_6__ {scalar_t__ kind; unsigned char data; int code; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 scalar_t__ KEY_RESERVED ; 
 scalar_t__ KIND_ACCEL ; 
 scalar_t__ KIND_END ; 
 scalar_t__ KIND_FILTERED ; 
 scalar_t__ KIND_LITERAL ; 
 int /*<<< orphan*/  RC_PROTO_OTHER ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int FUNC0 (struct ati_remote*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 TYPE_3__* ati_remote_tbl ; 
 int channel_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 void* jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repeat_delay ; 
 int /*<<< orphan*/  repeat_filter ; 
 scalar_t__ FUNC11 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct urb *urb)
{
	struct ati_remote *ati_remote = urb->context;
	unsigned char *data= ati_remote->inbuf;
	struct input_dev *dev = ati_remote->idev;
	int index = -1;
	int remote_num;
	unsigned char scancode;
	u32 wheel_keycode = KEY_RESERVED;
	int i;

	/*
	 * data[0] = 0x14
	 * data[1] = data[2] + data[3] + 0xd5 (a checksum byte)
	 * data[2] = the key code (with toggle bit in MSB with some models)
	 * data[3] = channel << 4 (the low 4 bits must be zero)
	 */

	/* Deal with strange looking inputs */
	if ( urb->actual_length != 4 || data[0] != 0x14 ||
	     data[1] != (unsigned char)(data[2] + data[3] + 0xD5) ||
	     (data[3] & 0x0f) != 0x00) {
		FUNC1(&urb->dev->dev, data, urb->actual_length);
		return;
	}

	if (data[1] != ((data[2] + data[3] + 0xd5) & 0xff)) {
		FUNC2(&ati_remote->interface->dev,
			"wrong checksum in input: %*ph\n", 4, data);
		return;
	}

	/* Mask unwanted remote channels.  */
	/* note: remote_num is 0-based, channel 1 on remote == 0 here */
	remote_num = (data[3] >> 4) & 0x0f;
	if (channel_mask & (1 << (remote_num + 1))) {
		FUNC2(&ati_remote->interface->dev,
			"Masked input from channel 0x%02x: data %02x, mask= 0x%02lx\n",
			remote_num, data[2], channel_mask);
		return;
	}

	/*
	 * MSB is a toggle code, though only used by some devices
	 * (e.g. SnapStream Firefly)
	 */
	scancode = data[2] & 0x7f;

	FUNC2(&ati_remote->interface->dev,
		"channel 0x%02x; key data %02x, scancode %02x\n",
		remote_num, data[2], scancode);

	if (scancode >= 0x70) {
		/*
		 * This is either a mouse or scrollwheel event, depending on
		 * the remote/keymap.
		 * Get the keycode assigned to scancode 0x78/0x70. If it is
		 * set, assume this is a scrollwheel up/down event.
		 */
		wheel_keycode = FUNC8(ati_remote->rdev,
							scancode & 0x78);

		if (wheel_keycode == KEY_RESERVED) {
			/* scrollwheel was not mapped, assume mouse */

			/* Look up event code index in the mouse translation
			 * table.
			 */
			for (i = 0; ati_remote_tbl[i].kind != KIND_END; i++) {
				if (scancode == ati_remote_tbl[i].data) {
					index = i;
					break;
				}
			}
		}
	}

	if (index >= 0 && ati_remote_tbl[index].kind == KIND_LITERAL) {
		/*
		 * The lsbit of the raw key code is a down/up flag.
		 * Invert it to match the input layer's conventions.
		 */
		FUNC4(dev, EV_KEY, ati_remote_tbl[index].code,
			!(data[2] & 1));

		ati_remote->old_jiffies = jiffies;

	} else if (index < 0 || ati_remote_tbl[index].kind == KIND_FILTERED) {
		unsigned long now = jiffies;

		/* Filter duplicate events which happen "too close" together. */
		if (ati_remote->old_data == data[2] &&
		    FUNC11(now, ati_remote->old_jiffies +
				     FUNC7(repeat_filter))) {
			ati_remote->repeat_count++;
		} else {
			ati_remote->repeat_count = 0;
			ati_remote->first_jiffies = now;
		}

		ati_remote->old_jiffies = now;

		/* Ensure we skip at least the 4 first duplicate events
		 * (generated by a single keypress), and continue skipping
		 * until repeat_delay msecs have passed.
		 */
		if (ati_remote->repeat_count > 0 &&
		    (ati_remote->repeat_count < 5 ||
		     FUNC11(now, ati_remote->first_jiffies +
				      FUNC7(repeat_delay))))
			return;

		if (index >= 0) {
			FUNC4(dev, EV_KEY, ati_remote_tbl[index].code, 1);
			FUNC4(dev, EV_KEY, ati_remote_tbl[index].code, 0);
		} else {
			/* Not a mouse event, hand it to rc-core. */
			int count = 1;

			if (wheel_keycode != KEY_RESERVED) {
				/*
				 * This is a scrollwheel event, send the
				 * scroll up (0x78) / down (0x70) scancode
				 * repeatedly as many times as indicated by
				 * rest of the scancode.
				 */
				count = (scancode & 0x07) + 1;
				scancode &= 0x78;
			}

			while (count--) {
				/*
				* We don't use the rc-core repeat handling yet as
				* it would cause ghost repeats which would be a
				* regression for this driver.
				*/
				FUNC9(ati_remote->rdev,
						     RC_PROTO_OTHER,
						     scancode, data[2]);
				FUNC10(ati_remote->rdev);
			}
			goto nosync;
		}

	} else if (ati_remote_tbl[index].kind == KIND_ACCEL) {
		signed char dx = ati_remote_tbl[index].code >> 8;
		signed char dy = ati_remote_tbl[index].code & 255;

		/*
		 * Other event kinds are from the directional control pad, and
		 * have an acceleration factor applied to them.  Without this
		 * acceleration, the control pad is mostly unusable.
		 */
		int acc = FUNC0(ati_remote);
		if (dx)
			FUNC5(dev, REL_X, dx * acc);
		if (dy)
			FUNC5(dev, REL_Y, dy * acc);
		ati_remote->old_jiffies = jiffies;

	} else {
		FUNC3(&ati_remote->interface->dev, "ati_remote kind=%d\n",
			ati_remote_tbl[index].kind);
		return;
	}
	FUNC6(dev);
nosync:
	ati_remote->old_data = data[2];
}