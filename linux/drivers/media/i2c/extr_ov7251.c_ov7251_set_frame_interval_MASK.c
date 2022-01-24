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
struct ov7251_mode_info {int link_freq; int exposure_def; int /*<<< orphan*/  timeperframe; int /*<<< orphan*/  exposure_max; int /*<<< orphan*/  pixel_clock; } ;
struct ov7251 {int /*<<< orphan*/  lock; struct ov7251_mode_info const* current_mode; int /*<<< orphan*/  gain; int /*<<< orphan*/  exposure; int /*<<< orphan*/  link_freq; int /*<<< orphan*/  pixel_clock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ov7251_mode_info* FUNC5 (struct ov7251*,int /*<<< orphan*/ *) ; 
 struct ov7251* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *subdev,
				     struct v4l2_subdev_frame_interval *fi)
{
	struct ov7251 *ov7251 = FUNC6(subdev);
	const struct ov7251_mode_info *new_mode;
	int ret = 0;

	FUNC3(&ov7251->lock);
	new_mode = FUNC5(ov7251, &fi->interval);

	if (new_mode != ov7251->current_mode) {
		ret = FUNC2(ov7251->pixel_clock,
					       new_mode->pixel_clock);
		if (ret < 0)
			goto exit;

		ret = FUNC1(ov7251->link_freq,
					 new_mode->link_freq);
		if (ret < 0)
			goto exit;

		ret = FUNC0(ov7251->exposure,
					       1, new_mode->exposure_max,
					       1, new_mode->exposure_def);
		if (ret < 0)
			goto exit;

		ret = FUNC1(ov7251->exposure,
					 new_mode->exposure_def);
		if (ret < 0)
			goto exit;

		ret = FUNC1(ov7251->gain, 16);
		if (ret < 0)
			goto exit;

		ov7251->current_mode = new_mode;
	}

	fi->interval = ov7251->current_mode->timeperframe;

exit:
	FUNC4(&ov7251->lock);

	return ret;
}