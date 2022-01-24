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
struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_termination ) (struct v4l2_subdev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int) ; 
 struct adv76xx_state* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC5(struct v4l2_subdev *sd)
{
	struct adv76xx_state *state = FUNC4(sd);

	FUNC0(sd, 0x1a, 0x10, 0x10); /* Mute audio */
	FUNC2(16); /* 512 samples with >= 32 kHz sample rate [REF_03, c. 7.16.10] */
	FUNC1(sd, 0x15, 0xbe);   /* Tristate all outputs from video core */
	state->info->set_termination(sd, false);
}