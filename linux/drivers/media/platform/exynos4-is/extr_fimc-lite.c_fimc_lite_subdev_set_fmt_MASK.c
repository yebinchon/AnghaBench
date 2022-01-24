#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {unsigned int pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct TYPE_3__ {scalar_t__ stream_count; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ left; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct flite_frame {int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; TYPE_2__ rect; struct fimc_fmt const* fmt; } ;
struct fimc_lite {int /*<<< orphan*/  lock; int /*<<< orphan*/  vb_queue; int /*<<< orphan*/  out_path; struct flite_frame out_frame; struct flite_frame inp_frame; } ;
struct fimc_fmt {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FIMC_IO_DMA ; 
 scalar_t__ FIMC_IO_ISP ; 
 scalar_t__ FLITE_SD_PAD_SINK ; 
 unsigned int FLITE_SD_PAD_SOURCE_DMA ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug ; 
 struct fimc_fmt* FUNC2 (struct fimc_lite*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fimc_lite* FUNC6 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd,
				    struct v4l2_subdev_pad_config *cfg,
				    struct v4l2_subdev_format *fmt)
{
	struct fimc_lite *fimc = FUNC6(sd);
	struct v4l2_mbus_framefmt *mf = &fmt->format;
	struct flite_frame *sink = &fimc->inp_frame;
	struct flite_frame *source = &fimc->out_frame;
	const struct fimc_fmt *ffmt;

	FUNC5(1, debug, sd, "pad%d: code: 0x%x, %dx%d\n",
		 fmt->pad, mf->code, mf->width, mf->height);

	FUNC3(&fimc->lock);

	if ((FUNC1(&fimc->out_path) == FIMC_IO_ISP &&
	    sd->entity.stream_count > 0) ||
	    (FUNC1(&fimc->out_path) == FIMC_IO_DMA &&
	    FUNC7(&fimc->vb_queue))) {
		FUNC4(&fimc->lock);
		return -EBUSY;
	}

	ffmt = FUNC2(fimc, cfg, fmt);

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		struct v4l2_mbus_framefmt *src_fmt;

		mf = FUNC0(sd, cfg, fmt->pad);
		*mf = fmt->format;

		if (fmt->pad == FLITE_SD_PAD_SINK) {
			unsigned int pad = FLITE_SD_PAD_SOURCE_DMA;
			src_fmt = FUNC0(sd, cfg, pad);
			*src_fmt = *mf;
		}

		FUNC4(&fimc->lock);
		return 0;
	}

	if (fmt->pad == FLITE_SD_PAD_SINK) {
		sink->f_width = mf->width;
		sink->f_height = mf->height;
		sink->fmt = ffmt;
		/* Set sink crop rectangle */
		sink->rect.width = mf->width;
		sink->rect.height = mf->height;
		sink->rect.left = 0;
		sink->rect.top = 0;
		/* Reset source format and crop rectangle */
		source->rect = sink->rect;
		source->f_width = mf->width;
		source->f_height = mf->height;
	}

	FUNC4(&fimc->lock);
	return 0;
}