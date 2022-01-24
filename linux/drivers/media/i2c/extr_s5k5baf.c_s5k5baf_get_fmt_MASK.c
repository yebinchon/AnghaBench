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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  field; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf_pixfmt {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct s5k5baf {size_t pixfmt; int /*<<< orphan*/  lock; TYPE_1__ crop_source; } ;

/* Variables and functions */
 scalar_t__ PAD_CIS ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5k5baf_pixfmt* s5k5baf_formats ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_mbus_framefmt*) ; 
 struct s5k5baf* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct s5k5baf *state = FUNC3(sd);
	const struct s5k5baf_pixfmt *pixfmt;
	struct v4l2_mbus_framefmt *mf;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		mf = FUNC4(sd, cfg, fmt->pad);
		fmt->format = *mf;
		return 0;
	}

	mf = &fmt->format;
	if (fmt->pad == PAD_CIS) {
		FUNC2(mf);
		return 0;
	}
	mf->field = V4L2_FIELD_NONE;
	FUNC0(&state->lock);
	pixfmt = &s5k5baf_formats[state->pixfmt];
	mf->width = state->crop_source.width;
	mf->height = state->crop_source.height;
	mf->code = pixfmt->code;
	mf->colorspace = pixfmt->colorspace;
	FUNC1(&state->lock);

	return 0;
}