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
struct TYPE_2__ {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct v4l2_subdev_frame_interval {scalar_t__ pad; TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int apply_fiv; int /*<<< orphan*/  lock; scalar_t__ streaming; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OIF_SOURCE_PAD ; 
 int FUNC0 (struct s5c73m3*,struct v4l2_subdev_frame_interval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5c73m3* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  s5c73m3_dbg ; 
 int FUNC4 (struct s5c73m3*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct s5c73m3 *state = FUNC3(sd);
	int ret;

	if (fi->pad != OIF_SOURCE_PAD)
		return -EINVAL;

	FUNC5(1, s5c73m3_dbg, sd, "Setting %d/%d frame interval\n",
		 fi->interval.numerator, fi->interval.denominator);

	FUNC1(&state->lock);

	ret = FUNC0(state, fi);
	if (!ret) {
		if (state->streaming)
			ret = FUNC4(state);
		else
			state->apply_fiv = 1;
	}
	FUNC2(&state->lock);
	return ret;
}