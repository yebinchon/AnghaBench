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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct s2250 {int audio_input; int /*<<< orphan*/  audio; } ;

/* Variables and functions */
 int EINVAL ; 
 struct s2250* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u32 input, u32 output,
				 u32 config)
{
	struct s2250 *state = FUNC0(sd);

	switch (input) {
	case 0:
		FUNC1(state->audio, 0x08, 0x02); /* Line In */
		break;
	case 1:
		FUNC1(state->audio, 0x08, 0x04); /* Mic */
		break;
	case 2:
		FUNC1(state->audio, 0x08, 0x05); /* Mic Boost */
		break;
	default:
		return -EINVAL;
	}
	state->audio_input = input;
	return 0;
}