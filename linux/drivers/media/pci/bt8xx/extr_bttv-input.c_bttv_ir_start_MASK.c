#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct bttv_ir {int shift_by; int /*<<< orphan*/  rc5_remote_gap; TYPE_1__ timer; scalar_t__ rc5_gpio; scalar_t__ polling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  bttv_input_timer ; 
 int /*<<< orphan*/  bttv_rc5_timer_end ; 
 int /*<<< orphan*/  ir_rc5_remote_gap ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bttv_ir *ir)
{
	if (ir->polling) {
		FUNC2(&ir->timer, bttv_input_timer, 0);
		ir->timer.expires  = jiffies + FUNC1(1000);
		FUNC0(&ir->timer);
	} else if (ir->rc5_gpio) {
		/* set timer_end for code completion */
		FUNC2(&ir->timer, bttv_rc5_timer_end, 0);
		ir->shift_by = 1;
		ir->rc5_remote_gap = ir_rc5_remote_gap;
	}
}