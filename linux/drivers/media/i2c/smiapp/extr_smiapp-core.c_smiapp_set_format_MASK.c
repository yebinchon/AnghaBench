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
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int width; int height; int /*<<< orphan*/  field; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ pad; int /*<<< orphan*/  which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct smiapp_subdev {scalar_t__ source_pad; size_t sink_pad; struct v4l2_rect sink_fmt; } ;
struct smiapp_sensor {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * limits; } ;

/* Variables and functions */
 size_t SMIAPP_LIMIT_MAX_X_OUTPUT_SIZE ; 
 size_t SMIAPP_LIMIT_MAX_Y_OUTPUT_SIZE ; 
 size_t SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE ; 
 size_t SMIAPP_LIMIT_MIN_Y_OUTPUT_SIZE ; 
 int SMIAPP_PADS ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_SEL_TGT_CROP ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,scalar_t__) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_rect**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 struct smiapp_sensor* FUNC7 (struct v4l2_subdev*) ; 
 struct smiapp_subdev* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *subdev,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *fmt)
{
	struct smiapp_sensor *sensor = FUNC7(subdev);
	struct smiapp_subdev *ssd = FUNC8(subdev);
	struct v4l2_rect *crops[SMIAPP_PADS];

	FUNC2(&sensor->mutex);

	if (fmt->pad == ssd->source_pad) {
		int rval;

		rval = FUNC6(subdev, cfg, fmt);

		FUNC3(&sensor->mutex);

		return rval;
	}

	/* Sink pad. Width and height are changeable here. */
	fmt->format.code = FUNC0(subdev, fmt->pad);
	fmt->format.width &= ~1;
	fmt->format.height &= ~1;
	fmt->format.field = V4L2_FIELD_NONE;

	fmt->format.width =
		FUNC1(fmt->format.width,
		      sensor->limits[SMIAPP_LIMIT_MIN_X_OUTPUT_SIZE],
		      sensor->limits[SMIAPP_LIMIT_MAX_X_OUTPUT_SIZE]);
	fmt->format.height =
		FUNC1(fmt->format.height,
		      sensor->limits[SMIAPP_LIMIT_MIN_Y_OUTPUT_SIZE],
		      sensor->limits[SMIAPP_LIMIT_MAX_Y_OUTPUT_SIZE]);

	FUNC4(subdev, cfg, crops, NULL, fmt->which);

	crops[ssd->sink_pad]->left = 0;
	crops[ssd->sink_pad]->top = 0;
	crops[ssd->sink_pad]->width = fmt->format.width;
	crops[ssd->sink_pad]->height = fmt->format.height;
	if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE)
		ssd->sink_fmt = *crops[ssd->sink_pad];
	FUNC5(subdev, cfg, fmt->which,
			 V4L2_SEL_TGT_CROP);

	FUNC3(&sensor->mutex);

	return 0;
}