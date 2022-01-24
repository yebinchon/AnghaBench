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
struct ov2680_dev {int is_streaming; int /*<<< orphan*/  lock; scalar_t__ mode_pending_changes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov2680_dev*) ; 
 int FUNC3 (struct ov2680_dev*) ; 
 int FUNC4 (struct ov2680_dev*) ; 
 struct ov2680_dev* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct ov2680_dev *sensor = FUNC5(sd);
	int ret = 0;

	FUNC0(&sensor->lock);

	if (sensor->is_streaming == !!enable)
		goto unlock;

	if (enable && sensor->mode_pending_changes) {
		ret = FUNC2(sensor);
		if (ret < 0)
			goto unlock;
	}

	if (enable)
		ret = FUNC4(sensor);
	else
		ret = FUNC3(sensor);

	sensor->is_streaming = !!enable;

unlock:
	FUNC1(&sensor->lock);

	return ret;
}