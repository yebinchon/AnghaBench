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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; int /*<<< orphan*/  field; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct flite_frame {struct v4l2_rect rect; TYPE_1__* fmt; } ;
struct flite_drvdata {int /*<<< orphan*/  max_height; int /*<<< orphan*/  out_width_align; int /*<<< orphan*/  max_width; } ;
struct fimc_lite {int /*<<< orphan*/  subdev; struct flite_frame inp_frame; struct flite_drvdata* dd; } ;
struct fimc_fmt {int /*<<< orphan*/  mbus_code; int /*<<< orphan*/  colorspace; } ;
struct TYPE_2__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  mbus_code; } ;

/* Variables and functions */
 scalar_t__ FLITE_SD_PAD_SINK ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct fimc_fmt* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_rect* FUNC4 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,scalar_t__) ; 
 struct v4l2_mbus_framefmt* FUNC5 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fimc_fmt *FUNC7(struct fimc_lite *fimc,
					struct v4l2_subdev_pad_config *cfg,
					struct v4l2_subdev_format *format)
{
	struct flite_drvdata *dd = fimc->dd;
	struct v4l2_mbus_framefmt *mf = &format->format;
	const struct fimc_fmt *fmt = NULL;

	if (format->pad == FLITE_SD_PAD_SINK) {
		FUNC6(&mf->width, 8, dd->max_width,
				FUNC1(dd->out_width_align) - 1,
				&mf->height, 0, dd->max_height, 0, 0);

		fmt = FUNC2(NULL, &mf->code, 0, 0);
		if (FUNC0(!fmt))
			return NULL;

		mf->colorspace = fmt->colorspace;
		mf->code = fmt->mbus_code;
	} else {
		struct flite_frame *sink = &fimc->inp_frame;
		struct v4l2_mbus_framefmt *sink_fmt;
		struct v4l2_rect *rect;

		if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
			sink_fmt = FUNC5(&fimc->subdev, cfg,
						FLITE_SD_PAD_SINK);

			mf->code = sink_fmt->code;
			mf->colorspace = sink_fmt->colorspace;

			rect = FUNC4(&fimc->subdev, cfg,
						FLITE_SD_PAD_SINK);
		} else {
			mf->code = sink->fmt->mbus_code;
			mf->colorspace = sink->fmt->colorspace;
			rect = &sink->rect;
		}

		/* Allow changing format only on sink pad */
		mf->width = rect->width;
		mf->height = rect->height;
	}

	mf->field = V4L2_FIELD_NONE;

	FUNC3(1, debug, &fimc->subdev, "code: %#x (%d), %dx%d\n",
		 mf->code, mf->colorspace, mf->width, mf->height);

	return fmt;
}