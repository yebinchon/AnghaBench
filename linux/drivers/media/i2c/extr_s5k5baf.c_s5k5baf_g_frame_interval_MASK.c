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
struct TYPE_2__ {int denominator; int /*<<< orphan*/  numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int /*<<< orphan*/  lock; int /*<<< orphan*/  fiv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5k5baf* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct s5k5baf *state = FUNC2(sd);

	FUNC0(&state->lock);
	fi->interval.numerator = state->fiv;
	fi->interval.denominator = 10000;
	FUNC1(&state->lock);

	return 0;
}