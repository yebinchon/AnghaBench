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
struct v4l2_subdev_frame_interval {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s5k5baf*,struct v4l2_subdev_frame_interval*) ; 
 struct s5k5baf* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct s5k5baf *state = FUNC3(sd);

	FUNC0(&state->lock);
	FUNC2(state, fi);
	FUNC1(&state->lock);
	return 0;
}