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
struct v4l2_subdev_frame_interval {int /*<<< orphan*/  interval; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov965x_framesize {int dummy; } ;
struct ov965x {int apply_frame_fmt; int /*<<< orphan*/  lock; int /*<<< orphan*/  tslb_reg; struct v4l2_mbus_framefmt format; struct ov965x_framesize const* frame_size; scalar_t__ streaming; } ;
struct TYPE_3__ {scalar_t__ code; int /*<<< orphan*/  tslb_reg; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC1 (struct ov965x*,struct v4l2_subdev_frame_interval*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_mbus_framefmt*,struct ov965x_framesize const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ov965x_formats ; 
 int /*<<< orphan*/  FUNC5 (struct ov965x*) ; 
 struct ov965x* FUNC6 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC7 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	unsigned int index = FUNC0(ov965x_formats);
	struct v4l2_mbus_framefmt *mf = &fmt->format;
	struct ov965x *ov965x = FUNC6(sd);
	const struct ov965x_framesize *size = NULL;
	int ret = 0;

	FUNC2(mf, &size);

	while (--index)
		if (ov965x_formats[index].code == mf->code)
			break;

	mf->colorspace	= V4L2_COLORSPACE_JPEG;
	mf->code	= ov965x_formats[index].code;
	mf->field	= V4L2_FIELD_NONE;

	FUNC3(&ov965x->lock);

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		if (cfg) {
			mf = FUNC7(sd, cfg, fmt->pad);
			*mf = fmt->format;
		}
	} else {
		if (ov965x->streaming) {
			ret = -EBUSY;
		} else {
			ov965x->frame_size = size;
			ov965x->format = fmt->format;
			ov965x->tslb_reg = ov965x_formats[index].tslb_reg;
			ov965x->apply_frame_fmt = 1;
		}
	}

	if (!ret && fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
		struct v4l2_subdev_frame_interval fiv = {
			.interval = { 0, 1 }
		};
		/* Reset to minimum possible frame interval */
		FUNC1(ov965x, &fiv);
	}
	FUNC4(&ov965x->lock);

	if (!ret)
		FUNC5(ov965x);

	return ret;
}