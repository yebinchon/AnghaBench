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
struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format_mplane {unsigned int width; unsigned int height; int /*<<< orphan*/  plane_fmt; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_mbus_framefmt {unsigned int width; unsigned int height; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct exynos_video_entity {int /*<<< orphan*/  pipe; } ;
struct fimc_vid_cap {struct v4l2_mbus_framefmt ci_fmt; int /*<<< orphan*/  user_subdev_api; struct fimc_ctx* ctx; struct exynos_video_entity ve; } ;
struct fimc_fmt {int flags; int /*<<< orphan*/  memplanes; int /*<<< orphan*/  mbus_code; } ;
struct fimc_dev {struct fimc_vid_cap vid_cap; } ;
struct TYPE_4__ {unsigned int f_width; unsigned int f_height; } ;
struct fimc_ctx {TYPE_2__ s_frame; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  FIMC_SD_PAD_SINK_CAM ; 
 int /*<<< orphan*/  FIMC_SD_PAD_SOURCE ; 
 int FMT_FLAGS_COMPRESSED ; 
 int /*<<< orphan*/  IDX_SENSOR ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_fmt*,unsigned int,unsigned int,struct v4l2_pix_format_mplane*) ; 
 struct fimc_fmt* FUNC2 (struct fimc_ctx*,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_video_entity*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_video_entity*) ; 
 int FUNC7 (struct fimc_ctx*,struct v4l2_mbus_framefmt*,struct fimc_fmt**,int) ; 

__attribute__((used)) static int FUNC8(struct fimc_dev *fimc,
				     struct v4l2_format *f, bool try,
				     struct fimc_fmt **inp_fmt,
				     struct fimc_fmt **out_fmt)
{
	struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
	struct fimc_vid_cap *vc = &fimc->vid_cap;
	struct exynos_video_entity *ve = &vc->ve;
	struct fimc_ctx *ctx = vc->ctx;
	unsigned int width = 0, height = 0;
	int ret = 0;

	/* Pre-configure format at the camera input interface, for JPEG only */
	if (FUNC4(pix->pixelformat)) {
		FUNC2(ctx, &pix->width, &pix->height,
					NULL, &pix->pixelformat,
					FIMC_SD_PAD_SINK_CAM);
		if (try) {
			width = pix->width;
			height = pix->height;
		} else {
			ctx->s_frame.f_width = pix->width;
			ctx->s_frame.f_height = pix->height;
		}
	}

	/* Try the format at the scaler and the DMA output */
	*out_fmt = FUNC2(ctx, &pix->width, &pix->height,
					  NULL, &pix->pixelformat,
					  FIMC_SD_PAD_SOURCE);
	if (*out_fmt == NULL)
		return -EINVAL;

	/* Restore image width/height for JPEG (no resizing supported). */
	if (try && FUNC4(pix->pixelformat)) {
		pix->width = width;
		pix->height = height;
	}

	/* Try to match format at the host and the sensor */
	if (!vc->user_subdev_api) {
		struct v4l2_mbus_framefmt mbus_fmt;
		struct v4l2_mbus_framefmt *mf;

		mf = try ? &mbus_fmt : &fimc->vid_cap.ci_fmt;

		mf->code = (*out_fmt)->mbus_code;
		mf->width = pix->width;
		mf->height = pix->height;

		FUNC5(ve);
		ret = FUNC7(ctx, mf, inp_fmt, try);
		FUNC6(ve);

		if (ret < 0)
			return ret;

		pix->width = mf->width;
		pix->height = mf->height;
	}

	FUNC1(*out_fmt, pix->width, pix->height, pix);

	if ((*out_fmt)->flags & FMT_FLAGS_COMPRESSED) {
		struct v4l2_subdev *sensor;

		FUNC5(ve);

		sensor = FUNC0(ve->pipe, IDX_SENSOR);
		if (sensor)
			FUNC3(sensor, pix->plane_fmt,
						   (*out_fmt)->memplanes, try);
		else
			ret = -EPIPE;

		FUNC6(ve);
	}

	return ret;
}