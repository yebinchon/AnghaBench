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
typedef  int u32 ;
struct v4l2_pix_format_mplane {scalar_t__ field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct fimc_variant {int min_inp_pixsize; int min_out_pixsize; int min_vsize_align; TYPE_1__* pix_limit; } ;
struct fimc_fmt {int /*<<< orphan*/  color; } ;
struct fimc_dev {struct fimc_variant* variant; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;
struct TYPE_3__ {int scaler_dis_w; int out_rot_dis_w; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 scalar_t__ V4L2_FIELD_ANY ; 
 scalar_t__ V4L2_FIELD_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_fmt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_pix_format_mplane*) ; 
 struct fimc_fmt* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct fimc_fmt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fimc_ctx *ctx, struct v4l2_format *f)
{
	struct fimc_dev *fimc = ctx->fimc_dev;
	const struct fimc_variant *variant = fimc->variant;
	struct v4l2_pix_format_mplane *pix = &f->fmt.pix_mp;
	struct fimc_fmt *fmt;
	u32 max_w, mod_x, mod_y;

	if (!FUNC0(f->type))
		return -EINVAL;

	fmt = FUNC4(&pix->pixelformat, NULL,
			       FUNC6(f->type), 0);
	if (FUNC1(fmt == NULL, "Pixel format lookup failed"))
		return -EINVAL;

	if (pix->field == V4L2_FIELD_ANY)
		pix->field = V4L2_FIELD_NONE;
	else if (pix->field != V4L2_FIELD_NONE)
		return -EINVAL;

	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		max_w = variant->pix_limit->scaler_dis_w;
		mod_x = FUNC2(variant->min_inp_pixsize) - 1;
	} else {
		max_w = variant->pix_limit->out_rot_dis_w;
		mod_x = FUNC2(variant->min_out_pixsize) - 1;
	}

	if (FUNC7(fmt)) {
		mod_x = 6; /* 64 x 32 pixels tile */
		mod_y = 5;
	} else {
		if (variant->min_vsize_align == 1)
			mod_y = FUNC5(fmt->color) ? 0 : 1;
		else
			mod_y = FUNC2(variant->min_vsize_align) - 1;
	}

	FUNC8(&pix->width, 16, max_w, mod_x,
		&pix->height, 8, variant->pix_limit->scaler_dis_w, mod_y, 0);

	FUNC3(fmt, pix->width, pix->height, &f->fmt.pix_mp);
	return 0;
}