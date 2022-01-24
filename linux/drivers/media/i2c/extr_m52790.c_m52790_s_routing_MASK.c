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
typedef  void* u32 ;
struct v4l2_subdev {int dummy; } ;
struct m52790_state {void* output; void* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 struct m52790_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			    u32 input, u32 output, u32 config)
{
	struct m52790_state *state = FUNC1(sd);

	state->input = input;
	state->output = output;
	FUNC0(sd);
	return 0;
}