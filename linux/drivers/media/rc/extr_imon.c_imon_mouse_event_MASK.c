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
struct imon_context {int product; scalar_t__ kc; scalar_t__ last_keycode; int /*<<< orphan*/  kc_lock; int /*<<< orphan*/  idev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 scalar_t__ KEY_CHANNELDOWN ; 
 scalar_t__ KEY_CHANNELUP ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct imon_context *ictx,
			     unsigned char *buf, int len)
{
	signed char rel_x = 0x00, rel_y = 0x00;
	u8 right_shift = 1;
	bool mouse_input = true;
	int dir = 0;
	unsigned long flags;

	FUNC4(&ictx->kc_lock, flags);

	/* newer iMON device PAD or mouse button */
	if (ictx->product != 0xffdc && (buf[0] & 0x01) && len == 5) {
		rel_x = buf[2];
		rel_y = buf[3];
		right_shift = 1;
	/* 0xffdc iMON PAD or mouse button input */
	} else if (ictx->product == 0xffdc && (buf[0] & 0x40) &&
			!((buf[1] & 0x01) || ((buf[1] >> 2) & 0x01))) {
		rel_x = (buf[1] & 0x08) | (buf[1] & 0x10) >> 2 |
			(buf[1] & 0x20) >> 4 | (buf[1] & 0x40) >> 6;
		if (buf[0] & 0x02)
			rel_x |= ~0x0f;
		rel_x = rel_x + rel_x / 2;
		rel_y = (buf[2] & 0x08) | (buf[2] & 0x10) >> 2 |
			(buf[2] & 0x20) >> 4 | (buf[2] & 0x40) >> 6;
		if (buf[0] & 0x01)
			rel_y |= ~0x0f;
		rel_y = rel_y + rel_y / 2;
		right_shift = 2;
	/* some ffdc devices decode mouse buttons differently... */
	} else if (ictx->product == 0xffdc && (buf[0] == 0x68)) {
		right_shift = 2;
	/* ch+/- buttons, which we use for an emulated scroll wheel */
	} else if (ictx->kc == KEY_CHANNELUP && (buf[2] & 0x40) != 0x40) {
		dir = 1;
	} else if (ictx->kc == KEY_CHANNELDOWN && (buf[2] & 0x40) != 0x40) {
		dir = -1;
	} else
		mouse_input = false;

	FUNC5(&ictx->kc_lock, flags);

	if (mouse_input) {
		FUNC0(ictx->dev, "sending mouse data via input subsystem\n");

		if (dir) {
			FUNC2(ictx->idev, REL_WHEEL, dir);
		} else if (rel_x || rel_y) {
			FUNC2(ictx->idev, REL_X, rel_x);
			FUNC2(ictx->idev, REL_Y, rel_y);
		} else {
			FUNC1(ictx->idev, BTN_LEFT, buf[1] & 0x1);
			FUNC1(ictx->idev, BTN_RIGHT,
					 buf[1] >> right_shift & 0x1);
		}
		FUNC3(ictx->idev);
		FUNC4(&ictx->kc_lock, flags);
		ictx->last_keycode = ictx->kc;
		FUNC5(&ictx->kc_lock, flags);
	}

	return mouse_input;
}