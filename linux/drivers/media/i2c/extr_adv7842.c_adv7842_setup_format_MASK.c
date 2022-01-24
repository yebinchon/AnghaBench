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
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int op_format_mode_sel; } ;
struct adv7842_state {TYPE_1__* format; TYPE_2__ pdata; struct v4l2_subdev sd; } ;
struct TYPE_3__ {int op_format_sel; scalar_t__ swap_cb_cr; scalar_t__ rgb_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7842_OP_SWAP_CB_CR ; 
 int /*<<< orphan*/  ADV7842_RGB_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct adv7842_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC4(struct adv7842_state *state)
{
	struct v4l2_subdev *sd = &state->sd;

	FUNC2(sd, 0x02, 0x02,
			state->format->rgb_out ? ADV7842_RGB_OUT : 0);
	FUNC1(sd, 0x03, state->format->op_format_sel |
		 state->pdata.op_format_mode_sel);
	FUNC2(sd, 0x04, 0xe0, FUNC0(state));
	FUNC2(sd, 0x05, 0x01,
			state->format->swap_cb_cr ? ADV7842_OP_SWAP_CB_CR : 0);
	FUNC3(sd);
}