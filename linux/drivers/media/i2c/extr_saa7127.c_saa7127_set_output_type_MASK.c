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
struct saa7127_state {int reg_2d; int reg_3a; int reg_3a_cb; int output_type; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SAA7127_OUTPUT_TYPE_BOTH 133 
#define  SAA7127_OUTPUT_TYPE_COMPOSITE 132 
#define  SAA7127_OUTPUT_TYPE_RGB 131 
#define  SAA7127_OUTPUT_TYPE_SVIDEO 130 
#define  SAA7127_OUTPUT_TYPE_YUV_C 129 
#define  SAA7127_OUTPUT_TYPE_YUV_V 128 
 int /*<<< orphan*/  SAA7129 ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/ * output_strs ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 struct saa7127_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int output)
{
	struct saa7127_state *state = FUNC1(sd);

	switch (output) {
	case SAA7127_OUTPUT_TYPE_RGB:
		state->reg_2d = 0x0f;	/* RGB + CVBS (for sync) */
		state->reg_3a = 0x13;	/* by default switch YUV to RGB-matrix on */
		break;

	case SAA7127_OUTPUT_TYPE_COMPOSITE:
		if (state->ident == SAA7129)
			state->reg_2d = 0x20;	/* CVBS only */
		else
			state->reg_2d = 0x08;	/* 00001000 CVBS only, RGB DAC's off (high impedance mode) */
		state->reg_3a = 0x13;	/* by default switch YUV to RGB-matrix on */
		break;

	case SAA7127_OUTPUT_TYPE_SVIDEO:
		if (state->ident == SAA7129)
			state->reg_2d = 0x18;	/* Y + C */
		else
			state->reg_2d = 0xff;   /*11111111  croma -> R, luma -> CVBS + G + B */
		state->reg_3a = 0x13;	/* by default switch YUV to RGB-matrix on */
		break;

	case SAA7127_OUTPUT_TYPE_YUV_V:
		state->reg_2d = 0x4f;	/* reg 2D = 01001111, all DAC's on, RGB + VBS */
		state->reg_3a = 0x0b;	/* reg 3A = 00001011, bypass RGB-matrix */
		break;

	case SAA7127_OUTPUT_TYPE_YUV_C:
		state->reg_2d = 0x0f;	/* reg 2D = 00001111, all DAC's on, RGB + CVBS */
		state->reg_3a = 0x0b;	/* reg 3A = 00001011, bypass RGB-matrix */
		break;

	case SAA7127_OUTPUT_TYPE_BOTH:
		if (state->ident == SAA7129)
			state->reg_2d = 0x38;
		else
			state->reg_2d = 0xbf;
		state->reg_3a = 0x13;	/* by default switch YUV to RGB-matrix on */
		break;

	default:
		return -EINVAL;
	}
	FUNC2(1, debug, sd,
		"Selecting %s output type\n", output_strs[output]);

	/* Configure Encoder */
	FUNC0(sd, 0x2d, state->reg_2d);
	FUNC0(sd, 0x3a, state->reg_3a | state->reg_3a_cb);
	state->output_type = output;
	return 0;
}