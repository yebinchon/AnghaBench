#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  expires; } ;
struct TYPE_7__ {int /*<<< orphan*/  keylock; TYPE_1__ rx_timeout; } ;
struct ir_raw_event_ctrl {TYPE_3__ mce_kbd; TYPE_2__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MCIR2_MASK_KEYS_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ir_raw_event_ctrl* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char* kbd_keycodes ; 
 TYPE_4__ mce_kbd ; 
 struct ir_raw_event_ctrl* raw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct ir_raw_event_ctrl *raw = FUNC1(raw, t, mce_kbd.rx_timeout);
	unsigned char maskcode;
	unsigned long flags;
	int i;

	FUNC0(&raw->dev->dev, "timer callback clearing all keys\n");

	FUNC4(&raw->mce_kbd.keylock, flags);

	if (FUNC6(raw->mce_kbd.rx_timeout.expires)) {
		for (i = 0; i < 7; i++) {
			maskcode = kbd_keycodes[MCIR2_MASK_KEYS_START + i];
			FUNC2(raw->dev->input_dev, maskcode, 0);
		}

		for (i = 0; i < MCIR2_MASK_KEYS_START; i++)
			FUNC2(raw->dev->input_dev, kbd_keycodes[i],
					 0);

		FUNC3(raw->dev->input_dev);
	}
	FUNC5(&raw->mce_kbd.keylock, flags);
}