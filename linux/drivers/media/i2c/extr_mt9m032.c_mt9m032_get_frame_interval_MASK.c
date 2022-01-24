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
struct v4l2_subdev_frame_interval {int /*<<< orphan*/  interval; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9m032 {int /*<<< orphan*/  lock; int /*<<< orphan*/  frame_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev_frame_interval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mt9m032* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *subdev,
				      struct v4l2_subdev_frame_interval *fi)
{
	struct mt9m032 *sensor = FUNC3(subdev);

	FUNC1(&sensor->lock);
	FUNC0(fi, 0, sizeof(*fi));
	fi->interval = sensor->frame_interval;
	FUNC2(&sensor->lock);

	return 0;
}