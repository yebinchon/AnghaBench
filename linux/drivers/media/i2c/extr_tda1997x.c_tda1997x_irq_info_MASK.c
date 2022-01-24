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
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {struct v4l2_subdev sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_IF ; 
 int /*<<< orphan*/  AVI_IF ; 
 int MASK_AUD_IF ; 
 int MASK_AVI_IF ; 
 int MASK_SPD_IF ; 
 int /*<<< orphan*/  REG_INT_FLG_CLR_INFO ; 
 int /*<<< orphan*/  SPD_IF ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tda1997x_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tda1997x_state *state, u8 *flags)
{
	struct v4l2_subdev *sd = &state->sd;
	u8 source;

	source = FUNC0(sd, REG_INT_FLG_CLR_INFO);
	FUNC1(sd, REG_INT_FLG_CLR_INFO, source);

	/* Audio infoframe */
	if (source & MASK_AUD_IF) {
		FUNC2(state, AUD_IF);
		source &= ~MASK_AUD_IF;
	}

	/* Source Product Descriptor infoframe change */
	if (source & MASK_SPD_IF) {
		FUNC2(state, SPD_IF);
		source &= ~MASK_SPD_IF;
	}

	/* Auxiliary Video Information infoframe */
	if (source & MASK_AVI_IF) {
		FUNC2(state, AVI_IF);
		source &= ~MASK_AVI_IF;
	}
}