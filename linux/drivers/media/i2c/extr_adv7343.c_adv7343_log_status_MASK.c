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
struct adv7343_state {int output; scalar_t__ std; } ;

/* Variables and functions */
 struct adv7343_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct adv7343_state *state = FUNC0(sd);

	FUNC1(sd, "Standard: %llx\n", (unsigned long long)state->std);
	FUNC1(sd, "Output: %s\n", (state->output == 0) ? "Composite" :
			((state->output == 1) ? "Component" : "S-Video"));
	return 0;
}