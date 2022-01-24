#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rc_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  timeout; TYPE_1__* raw; } ;
struct mce_kbd_dec {int state; int count; int header; int wanted_bits; int body; int /*<<< orphan*/  keylock; int /*<<< orphan*/  rx_timeout; } ;
struct lirc_scancode {int scancode; int /*<<< orphan*/  rc_proto; } ;
struct ir_raw_event {int /*<<< orphan*/  pulse; int /*<<< orphan*/  duration; scalar_t__ reset; } ;
struct TYPE_2__ {struct mce_kbd_dec mce_kbd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MCIR2_BIT_END ; 
 int MCIR2_HEADER_NBITS ; 
#define  MCIR2_KEYBOARD_NBITS 137 
 int MCIR2_MAX_LEN ; 
#define  MCIR2_MODE_KEYBOARD 136 
#define  MCIR2_MODE_MOUSE 135 
#define  MCIR2_MOUSE_NBITS 134 
 int /*<<< orphan*/  MCIR2_PREFIX_PULSE ; 
 int MCIR2_UNIT ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  RC_PROTO_MCIR2_KBD ; 
 int /*<<< orphan*/  RC_PROTO_MCIR2_MSE ; 
#define  STATE_BODY_BIT_END 133 
#define  STATE_BODY_BIT_START 132 
#define  STATE_FINISHED 131 
#define  STATE_HEADER_BIT_END 130 
#define  STATE_HEADER_BIT_START 129 
#define  STATE_INACTIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_raw_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rc_dev*,struct lirc_scancode*) ; 
 int /*<<< orphan*/  FUNC10 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rc_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ir_raw_event) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC13 (struct mce_kbd_dec*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC15 (int) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct rc_dev *dev, struct ir_raw_event ev)
{
	struct mce_kbd_dec *data = &dev->raw->mce_kbd;
	u32 scancode;
	unsigned long delay;
	struct lirc_scancode lsc = {};

	if (!FUNC12(ev)) {
		if (ev.reset)
			data->state = STATE_INACTIVE;
		return 0;
	}

	if (!FUNC6(ev.duration, MCIR2_UNIT, MCIR2_UNIT / 2))
		goto out;

again:
	FUNC4(&dev->dev, "started at state %i (%uus %s)\n",
		data->state, FUNC1(ev.duration), FUNC0(ev.pulse));

	if (!FUNC6(ev.duration, MCIR2_UNIT, MCIR2_UNIT / 2))
		return 0;

	switch (data->state) {

	case STATE_INACTIVE:
		if (!ev.pulse)
			break;

		/* Note: larger margin on first pulse since each MCIR2_UNIT
		   is quite short and some hardware takes some time to
		   adjust to the signal */
		if (!FUNC5(ev.duration, MCIR2_PREFIX_PULSE, MCIR2_UNIT))
			break;

		data->state = STATE_HEADER_BIT_START;
		data->count = 0;
		data->header = 0;
		return 0;

	case STATE_HEADER_BIT_START:
		if (FUNC6(ev.duration, MCIR2_MAX_LEN, MCIR2_UNIT / 2))
			break;

		data->header <<= 1;
		if (ev.pulse)
			data->header |= 1;
		data->count++;
		data->state = STATE_HEADER_BIT_END;
		return 0;

	case STATE_HEADER_BIT_END:
		FUNC2(&ev, MCIR2_BIT_END);

		if (data->count != MCIR2_HEADER_NBITS) {
			data->state = STATE_HEADER_BIT_START;
			goto again;
		}

		switch (FUNC13(data)) {
		case MCIR2_MODE_KEYBOARD:
			data->wanted_bits = MCIR2_KEYBOARD_NBITS;
			break;
		case MCIR2_MODE_MOUSE:
			data->wanted_bits = MCIR2_MOUSE_NBITS;
			break;
		default:
			FUNC4(&dev->dev, "not keyboard or mouse data\n");
			goto out;
		}

		data->count = 0;
		data->body = 0;
		data->state = STATE_BODY_BIT_START;
		goto again;

	case STATE_BODY_BIT_START:
		if (FUNC6(ev.duration, MCIR2_MAX_LEN, MCIR2_UNIT / 2))
			break;

		data->body <<= 1;
		if (ev.pulse)
			data->body |= 1;
		data->count++;
		data->state = STATE_BODY_BIT_END;
		return 0;

	case STATE_BODY_BIT_END:
		if (data->count == data->wanted_bits)
			data->state = STATE_FINISHED;
		else
			data->state = STATE_BODY_BIT_START;

		FUNC2(&ev, MCIR2_BIT_END);
		goto again;

	case STATE_FINISHED:
		if (ev.pulse)
			break;

		switch (data->wanted_bits) {
		case MCIR2_KEYBOARD_NBITS:
			scancode = data->body & 0xffffff;
			FUNC4(&dev->dev, "keyboard data 0x%08x\n",
				data->body);
			FUNC17(&data->keylock);
			if (scancode) {
				delay = FUNC16(dev->timeout) +
					FUNC15(100);
				FUNC14(&data->rx_timeout, jiffies + delay);
			} else {
				FUNC3(&data->rx_timeout);
			}
			/* Pass data to keyboard buffer parser */
			FUNC10(dev, scancode);
			FUNC18(&data->keylock);
			lsc.rc_proto = RC_PROTO_MCIR2_KBD;
			break;
		case MCIR2_MOUSE_NBITS:
			scancode = data->body & 0x1fffff;
			FUNC4(&dev->dev, "mouse data 0x%06x\n", scancode);
			/* Pass data to mouse buffer parser */
			FUNC11(dev, scancode);
			lsc.rc_proto = RC_PROTO_MCIR2_MSE;
			break;
		default:
			FUNC4(&dev->dev, "not keyboard or mouse data\n");
			goto out;
		}

		lsc.scancode = scancode;
		FUNC9(dev, &lsc);
		data->state = STATE_INACTIVE;
		FUNC7(dev->input_dev, EV_MSC, MSC_SCAN, scancode);
		FUNC8(dev->input_dev);
		return 0;
	}

out:
	FUNC4(&dev->dev, "failed at state %i (%uus %s)\n",
		data->state, FUNC1(ev.duration), FUNC0(ev.pulse));
	data->state = STATE_INACTIVE;
	return -EINVAL;
}