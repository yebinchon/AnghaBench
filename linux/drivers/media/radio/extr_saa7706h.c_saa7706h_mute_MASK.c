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
struct v4l2_subdev {int dummy; } ;
struct saa7706h_state {int muted; } ;

/* Variables and functions */
 int SAA7706H_CTRL_PC_RESET_DSP1 ; 
 int SAA7706H_CTRL_PC_RESET_DSP2 ; 
 int SAA7706H_CTRL_PLL3_62975MHZ ; 
 int /*<<< orphan*/  SAA7706H_REG_CTRL ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct saa7706h_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct saa7706h_state *state = FUNC1(sd);
	int err;

	err = FUNC0(sd, SAA7706H_REG_CTRL,
		SAA7706H_CTRL_PLL3_62975MHZ | SAA7706H_CTRL_PC_RESET_DSP1 |
		SAA7706H_CTRL_PC_RESET_DSP2);
	if (!err)
		state->muted = 1;
	return err;
}