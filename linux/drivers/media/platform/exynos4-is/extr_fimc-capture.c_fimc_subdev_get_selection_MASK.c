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
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; scalar_t__ which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct fimc_frame {int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  offs_v; int /*<<< orphan*/  offs_h; int /*<<< orphan*/  o_height; int /*<<< orphan*/  o_width; } ;
struct TYPE_2__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int /*<<< orphan*/  lock; TYPE_1__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_frame s_frame; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FIMC_SD_PAD_SOURCE ; 
#define  V4L2_SEL_TGT_COMPOSE 131 
#define  V4L2_SEL_TGT_COMPOSE_BOUNDS 130 
#define  V4L2_SEL_TGT_CROP 129 
#define  V4L2_SEL_TGT_CROP_BOUNDS 128 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fimc_dev* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_rect* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 
 struct v4l2_rect* FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
				     struct v4l2_subdev_pad_config *cfg,
				     struct v4l2_subdev_selection *sel)
{
	struct fimc_dev *fimc = FUNC3(sd);
	struct fimc_ctx *ctx = fimc->vid_cap.ctx;
	struct fimc_frame *f = &ctx->s_frame;
	struct v4l2_rect *r = &sel->r;
	struct v4l2_rect *try_sel;

	if (sel->pad == FIMC_SD_PAD_SOURCE)
		return -EINVAL;

	FUNC1(&fimc->lock);

	switch (sel->target) {
	case V4L2_SEL_TGT_COMPOSE_BOUNDS:
		f = &ctx->d_frame;
		/* fall through */
	case V4L2_SEL_TGT_CROP_BOUNDS:
		r->width = f->o_width;
		r->height = f->o_height;
		r->left = 0;
		r->top = 0;
		FUNC2(&fimc->lock);
		return 0;

	case V4L2_SEL_TGT_CROP:
		try_sel = FUNC5(sd, cfg, sel->pad);
		break;
	case V4L2_SEL_TGT_COMPOSE:
		try_sel = FUNC4(sd, cfg, sel->pad);
		f = &ctx->d_frame;
		break;
	default:
		FUNC2(&fimc->lock);
		return -EINVAL;
	}

	if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
		sel->r = *try_sel;
	} else {
		r->left = f->offs_h;
		r->top = f->offs_v;
		r->width = f->width;
		r->height = f->height;
	}

	FUNC0("target %#x: l:%d, t:%d, %dx%d, f_w: %d, f_h: %d",
	    sel->pad, r->left, r->top, r->width, r->height,
	    f->f_width, f->f_height);

	FUNC2(&fimc->lock);
	return 0;
}