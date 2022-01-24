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
struct ov965x {int apply_frame_fmt; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct ov965x*,struct v4l2_subdev_frame_interval*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ov965x* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct ov965x *ov965x = FUNC3(sd);
	int ret;

	FUNC4(1, debug, sd, "Setting %d/%d frame interval\n",
		 fi->interval.numerator, fi->interval.denominator);

	FUNC1(&ov965x->lock);
	ret = FUNC0(ov965x, fi);
	ov965x->apply_frame_fmt = 1;
	FUNC2(&ov965x->lock);
	return ret;
}