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
struct v4l2_selection {scalar_t__ type; int flags; struct v4l2_rect r; int /*<<< orphan*/  target; } ;
struct fimc_frame {int dummy; } ;
struct TYPE_2__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int /*<<< orphan*/  state; int /*<<< orphan*/  slock; TYPE_1__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame s_frame; struct fimc_frame d_frame; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  ST_CAPT_APPLY_CFG ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_SEL_FLAG_GE ; 
 int V4L2_SEL_FLAG_LE ; 
 int /*<<< orphan*/  V4L2_SEL_TGT_COMPOSE ; 
 int /*<<< orphan*/  V4L2_SEL_TGT_CROP ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_rect*,struct v4l2_rect*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_ctx*,struct v4l2_rect*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fimc_dev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh,
				struct v4l2_selection *s)
{
	struct fimc_dev *fimc = FUNC6(file);
	struct fimc_ctx *ctx = fimc->vid_cap.ctx;
	struct v4l2_rect rect = s->r;
	struct fimc_frame *f;
	unsigned long flags;

	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	if (s->target == V4L2_SEL_TGT_COMPOSE)
		f = &ctx->d_frame;
	else if (s->target == V4L2_SEL_TGT_CROP)
		f = &ctx->s_frame;
	else
		return -EINVAL;

	FUNC1(ctx, &rect, s->target);

	if (s->flags & V4L2_SEL_FLAG_LE &&
	    !FUNC0(&rect, &s->r))
		return -ERANGE;

	if (s->flags & V4L2_SEL_FLAG_GE &&
	    !FUNC0(&s->r, &rect))
		return -ERANGE;

	s->r = rect;
	FUNC4(&fimc->slock, flags);
	FUNC3(f, s->r.left, s->r.top, s->r.width,
		       s->r.height);
	FUNC5(&fimc->slock, flags);

	FUNC2(ST_CAPT_APPLY_CFG, &fimc->state);
	return 0;
}