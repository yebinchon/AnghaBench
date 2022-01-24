#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {size_t index; scalar_t__ code; int /*<<< orphan*/  min_height; int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_width; int /*<<< orphan*/  max_width; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355 {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct imx355*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* supported_modes ; 
 struct imx355* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				  struct v4l2_subdev_pad_config *cfg,
				  struct v4l2_subdev_frame_size_enum *fse)
{
	struct imx355 *imx355 = FUNC4(sd);

	if (fse->index >= FUNC0(supported_modes))
		return -EINVAL;

	FUNC2(&imx355->mutex);
	if (fse->code != FUNC1(imx355)) {
		FUNC3(&imx355->mutex);
		return -EINVAL;
	}
	FUNC3(&imx355->mutex);

	fse->min_width = supported_modes[fse->index].width;
	fse->max_width = fse->min_width;
	fse->min_height = supported_modes[fse->index].height;
	fse->max_height = fse->min_height;

	return 0;
}