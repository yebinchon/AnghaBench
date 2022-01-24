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
struct cx25840_state {int /*<<< orphan*/  is_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct cx25840_state *state = FUNC1(sd);

	if (!state->is_initialized) {
		/* initialize and load firmware */
		FUNC0(sd, 0);
	}
	return 0;
}