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
struct lis3lv02d_platform_data {int hipass_ctrl; int click_flags; int click_time_limit; int click_latency; int click_window; int click_thresh_z; int click_thresh_x; int click_thresh_y; int wakeup_flags; int wakeup_thresh; int duration1; int wakeup_flags2; int wakeup_thresh2; int duration2; int irq_flags2; scalar_t__ irq2; } ;
struct lis3lv02d {int /*<<< orphan*/  (* write ) (struct lis3lv02d*,int /*<<< orphan*/ ,int) ;TYPE_1__* idev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BTN_Z ; 
 int /*<<< orphan*/  CLICK_CFG ; 
 int /*<<< orphan*/  CLICK_LATENCY ; 
 int /*<<< orphan*/  CLICK_THSY_X ; 
 int /*<<< orphan*/  CLICK_THSZ ; 
 int /*<<< orphan*/  CLICK_TIMELIMIT ; 
 int /*<<< orphan*/  CLICK_WINDOW ; 
 int /*<<< orphan*/  CTRL_REG2 ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FF_WU_CFG_1 ; 
 int /*<<< orphan*/  FF_WU_CFG_2 ; 
 int /*<<< orphan*/  FF_WU_DURATION_1 ; 
 int /*<<< orphan*/  FF_WU_DURATION_2 ; 
 int /*<<< orphan*/  FF_WU_THS_1 ; 
 int /*<<< orphan*/  FF_WU_THS_2 ; 
 int HP_FF_WU1 ; 
 int HP_FF_WU2 ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_MASK ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lis302dl_interrupt_thread2_8b ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC3 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct lis3lv02d*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct lis3lv02d *lis3,
				struct lis3lv02d_platform_data *p)
{
	int err;
	int ctrl2 = p->hipass_ctrl;

	if (p->click_flags) {
		lis3->write(lis3, CLICK_CFG, p->click_flags);
		lis3->write(lis3, CLICK_TIMELIMIT, p->click_time_limit);
		lis3->write(lis3, CLICK_LATENCY, p->click_latency);
		lis3->write(lis3, CLICK_WINDOW, p->click_window);
		lis3->write(lis3, CLICK_THSZ, p->click_thresh_z & 0xf);
		lis3->write(lis3, CLICK_THSY_X,
			(p->click_thresh_x & 0xf) |
			(p->click_thresh_y << 4));

		if (lis3->idev) {
			struct input_dev *input_dev = lis3->idev->input;
			FUNC0(input_dev, EV_KEY, BTN_X);
			FUNC0(input_dev, EV_KEY, BTN_Y);
			FUNC0(input_dev, EV_KEY, BTN_Z);
		}
	}

	if (p->wakeup_flags) {
		lis3->write(lis3, FF_WU_CFG_1, p->wakeup_flags);
		lis3->write(lis3, FF_WU_THS_1, p->wakeup_thresh & 0x7f);
		/* pdata value + 1 to keep this backward compatible*/
		lis3->write(lis3, FF_WU_DURATION_1, p->duration1 + 1);
		ctrl2 ^= HP_FF_WU1; /* Xor to keep compatible with old pdata*/
	}

	if (p->wakeup_flags2) {
		lis3->write(lis3, FF_WU_CFG_2, p->wakeup_flags2);
		lis3->write(lis3, FF_WU_THS_2, p->wakeup_thresh2 & 0x7f);
		/* pdata value + 1 to keep this backward compatible*/
		lis3->write(lis3, FF_WU_DURATION_2, p->duration2 + 1);
		ctrl2 ^= HP_FF_WU2; /* Xor to keep compatible with old pdata*/
	}
	/* Configure hipass filters */
	lis3->write(lis3, CTRL_REG2, ctrl2);

	if (p->irq2) {
		err = FUNC2(p->irq2,
					NULL,
					lis302dl_interrupt_thread2_8b,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT |
					(p->irq_flags2 & IRQF_TRIGGER_MASK),
					DRIVER_NAME, lis3);
		if (err < 0)
			FUNC1("No second IRQ. Limited functionality\n");
	}
}