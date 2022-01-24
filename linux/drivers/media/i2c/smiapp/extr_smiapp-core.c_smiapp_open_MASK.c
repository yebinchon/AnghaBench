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
struct v4l2_subdev_fh {int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct smiapp_subdev {unsigned int npads; struct smiapp_sensor* sensor; } ;
struct smiapp_sensor {int /*<<< orphan*/  mutex; struct smiapp_subdev* pixel_array; TYPE_1__* internal_csi_format; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smiapp_subdev*,struct v4l2_rect*) ; 
 struct smiapp_subdev* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_rect* FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct v4l2_rect* FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct v4l2_mbus_framefmt* FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
	struct smiapp_subdev *ssd = FUNC3(sd);
	struct smiapp_sensor *sensor = ssd->sensor;
	unsigned int i;

	FUNC0(&sensor->mutex);

	for (i = 0; i < ssd->npads; i++) {
		struct v4l2_mbus_framefmt *try_fmt =
			FUNC6(sd, fh->pad, i);
		struct v4l2_rect *try_crop =
			FUNC5(sd, fh->pad, i);
		struct v4l2_rect *try_comp;

		FUNC2(ssd, try_crop);

		try_fmt->width = try_crop->width;
		try_fmt->height = try_crop->height;
		try_fmt->code = sensor->internal_csi_format->code;
		try_fmt->field = V4L2_FIELD_NONE;

		if (ssd != sensor->pixel_array)
			continue;

		try_comp = FUNC4(sd, fh->pad, i);
		*try_comp = *try_crop;
	}

	FUNC1(&sensor->mutex);

	return 0;
}