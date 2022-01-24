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
struct rc_dev {int /*<<< orphan*/  dev; TYPE_1__* raw; } ;
struct jvc_dec {int state; int first; int toggle; int bits; int old_bits; int /*<<< orphan*/  count; } ;
struct ir_raw_event {int /*<<< orphan*/  pulse; int /*<<< orphan*/  duration; scalar_t__ reset; } ;
struct TYPE_2__ {struct jvc_dec jvc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  JVC_BIT_0_SPACE ; 
 int /*<<< orphan*/  JVC_BIT_1_SPACE ; 
 int /*<<< orphan*/  JVC_BIT_PULSE ; 
 int /*<<< orphan*/  JVC_HEADER_PULSE ; 
 int /*<<< orphan*/  JVC_HEADER_SPACE ; 
 int /*<<< orphan*/  JVC_NBITS ; 
 int /*<<< orphan*/  JVC_TRAILER_PULSE ; 
 int JVC_TRAILER_SPACE ; 
 int JVC_UNIT ; 
 int /*<<< orphan*/  RC_PROTO_JVC ; 
#define  STATE_BIT_PULSE 134 
#define  STATE_BIT_SPACE 133 
#define  STATE_CHECK_REPEAT 132 
#define  STATE_HEADER_SPACE 131 
#define  STATE_INACTIVE 130 
#define  STATE_TRAILER_PULSE 129 
#define  STATE_TRAILER_SPACE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_raw_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ir_raw_event) ; 
 int /*<<< orphan*/  FUNC8 (struct rc_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rc_dev*) ; 

__attribute__((used)) static int FUNC10(struct rc_dev *dev, struct ir_raw_event ev)
{
	struct jvc_dec *data = &dev->raw->jvc;

	if (!FUNC7(ev)) {
		if (ev.reset)
			data->state = STATE_INACTIVE;
		return 0;
	}

	if (!FUNC6(ev.duration, JVC_UNIT, JVC_UNIT / 2))
		goto out;

	FUNC4(&dev->dev, "JVC decode started at state %d (%uus %s)\n",
		data->state, FUNC1(ev.duration), FUNC0(ev.pulse));

again:
	switch (data->state) {

	case STATE_INACTIVE:
		if (!ev.pulse)
			break;

		if (!FUNC5(ev.duration, JVC_HEADER_PULSE, JVC_UNIT / 2))
			break;

		data->count = 0;
		data->first = true;
		data->toggle = !data->toggle;
		data->state = STATE_HEADER_SPACE;
		return 0;

	case STATE_HEADER_SPACE:
		if (ev.pulse)
			break;

		if (!FUNC5(ev.duration, JVC_HEADER_SPACE, JVC_UNIT / 2))
			break;

		data->state = STATE_BIT_PULSE;
		return 0;

	case STATE_BIT_PULSE:
		if (!ev.pulse)
			break;

		if (!FUNC5(ev.duration, JVC_BIT_PULSE, JVC_UNIT / 2))
			break;

		data->state = STATE_BIT_SPACE;
		return 0;

	case STATE_BIT_SPACE:
		if (ev.pulse)
			break;

		data->bits <<= 1;
		if (FUNC5(ev.duration, JVC_BIT_1_SPACE, JVC_UNIT / 2)) {
			data->bits |= 1;
			FUNC3(&ev, JVC_BIT_1_SPACE);
		} else if (FUNC5(ev.duration, JVC_BIT_0_SPACE, JVC_UNIT / 2))
			FUNC3(&ev, JVC_BIT_0_SPACE);
		else
			break;
		data->count++;

		if (data->count == JVC_NBITS)
			data->state = STATE_TRAILER_PULSE;
		else
			data->state = STATE_BIT_PULSE;
		return 0;

	case STATE_TRAILER_PULSE:
		if (!ev.pulse)
			break;

		if (!FUNC5(ev.duration, JVC_TRAILER_PULSE, JVC_UNIT / 2))
			break;

		data->state = STATE_TRAILER_SPACE;
		return 0;

	case STATE_TRAILER_SPACE:
		if (ev.pulse)
			break;

		if (!FUNC6(ev.duration, JVC_TRAILER_SPACE, JVC_UNIT / 2))
			break;

		if (data->first) {
			u32 scancode;
			scancode = (FUNC2((data->bits >> 8) & 0xff) << 8) |
				   (FUNC2((data->bits >> 0) & 0xff) << 0);
			FUNC4(&dev->dev, "JVC scancode 0x%04x\n", scancode);
			FUNC8(dev, RC_PROTO_JVC, scancode, data->toggle);
			data->first = false;
			data->old_bits = data->bits;
		} else if (data->bits == data->old_bits) {
			FUNC4(&dev->dev, "JVC repeat\n");
			FUNC9(dev);
		} else {
			FUNC4(&dev->dev, "JVC invalid repeat msg\n");
			break;
		}

		data->count = 0;
		data->state = STATE_CHECK_REPEAT;
		return 0;

	case STATE_CHECK_REPEAT:
		if (!ev.pulse)
			break;

		if (FUNC5(ev.duration, JVC_HEADER_PULSE, JVC_UNIT / 2))
			data->state = STATE_INACTIVE;
  else
			data->state = STATE_BIT_PULSE;
		goto again;
	}

out:
	FUNC4(&dev->dev, "JVC decode failed at state %d (%uus %s)\n",
		data->state, FUNC1(ev.duration), FUNC0(ev.pulse));
	data->state = STATE_INACTIVE;
	return -EINVAL;
}