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
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int apply_cfg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct s5k6aa*,struct v4l2_subdev_frame_interval*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5k6aa* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct s5k6aa *s5k6aa = FUNC3(sd);
	int ret;

	FUNC4(1, debug, sd, "Setting %d/%d frame interval\n",
		 fi->interval.numerator, fi->interval.denominator);

	FUNC1(&s5k6aa->lock);
	ret = FUNC0(s5k6aa, fi);
	s5k6aa->apply_cfg = 1;

	FUNC2(&s5k6aa->lock);
	return ret;
}