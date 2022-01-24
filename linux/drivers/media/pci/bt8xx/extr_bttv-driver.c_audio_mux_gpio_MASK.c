#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t type; } ;
struct bttv {TYPE_1__ c; int /*<<< orphan*/  has_radio_tuner; int /*<<< orphan*/  users; scalar_t__ opt_automute; } ;
struct TYPE_4__ {int gpiomute; int* gpiomux; int /*<<< orphan*/  gpiomask; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_DSTATUS ; 
 int BT848_DSTATUS_HLOC ; 
#define  BTTV_BOARD_VOODOOTV_200 129 
#define  BTTV_BOARD_VOODOOTV_FM 128 
 int /*<<< orphan*/ * audio_modes ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bttv*,int) ; 
 TYPE_2__* bttv_tvcards ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bttv *btv, int input, int mute)
{
	int gpio_val, signal, mute_gpio;

	FUNC4(bttv_tvcards[btv->c.type].gpiomask,
		   bttv_tvcards[btv->c.type].gpiomask);
	signal = FUNC0(BT848_DSTATUS) & BT848_DSTATUS_HLOC;

	/* automute */
	mute_gpio = mute || (btv->opt_automute && (!signal || !btv->users)
				&& !btv->has_radio_tuner);

	if (mute_gpio)
		gpio_val = bttv_tvcards[btv->c.type].gpiomute;
	else
		gpio_val = bttv_tvcards[btv->c.type].gpiomux[input];

	switch (btv->c.type) {
	case BTTV_BOARD_VOODOOTV_FM:
	case BTTV_BOARD_VOODOOTV_200:
		gpio_val = FUNC2(btv, gpio_val);
		break;

	default:
		FUNC3(bttv_tvcards[btv->c.type].gpiomask, gpio_val);
	}

	if (bttv_gpio)
		FUNC1(btv, audio_modes[mute_gpio ? 4 : input]);
}