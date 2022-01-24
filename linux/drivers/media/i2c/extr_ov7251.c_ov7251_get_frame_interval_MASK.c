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
struct v4l2_subdev_frame_interval {int /*<<< orphan*/  interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int /*<<< orphan*/  lock; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeperframe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ov7251* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *subdev,
				     struct v4l2_subdev_frame_interval *fi)
{
	struct ov7251 *ov7251 = FUNC2(subdev);

	FUNC0(&ov7251->lock);
	fi->interval = ov7251->current_mode->timeperframe;
	FUNC1(&ov7251->lock);

	return 0;
}