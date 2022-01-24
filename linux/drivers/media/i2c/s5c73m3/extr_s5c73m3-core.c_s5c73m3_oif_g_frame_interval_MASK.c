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
struct v4l2_subdev_frame_interval {scalar_t__ pad; int /*<<< orphan*/  interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int /*<<< orphan*/  lock; TYPE_1__* fiv; } ;
struct TYPE_2__ {int /*<<< orphan*/  interval; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OIF_SOURCE_PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5c73m3* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct s5c73m3 *state = FUNC2(sd);

	if (fi->pad != OIF_SOURCE_PAD)
		return -EINVAL;

	FUNC0(&state->lock);
	fi->interval = state->fiv->interval;
	FUNC1(&state->lock);

	return 0;
}