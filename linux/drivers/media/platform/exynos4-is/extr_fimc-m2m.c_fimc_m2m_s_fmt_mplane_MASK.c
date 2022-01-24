#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_4__ pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; int /*<<< orphan*/  type; } ;
struct fimc_frame {int dummy; } ;
struct fimc_fmt {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vfd; } ;
struct fimc_dev {TYPE_2__ m2m; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_frame s_frame; TYPE_1__ fh; struct fimc_dev* fimc_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_frame*,struct fimc_fmt*,TYPE_4__*) ; 
 struct fimc_ctx* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_ctx*) ; 
 struct fimc_fmt* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fimc_ctx*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC9(struct file *file, void *fh,
				 struct v4l2_format *f)
{
	struct fimc_ctx *ctx = FUNC1(fh);
	struct fimc_dev *fimc = ctx->fimc_dev;
	struct fimc_fmt *fmt;
	struct vb2_queue *vq;
	struct fimc_frame *frame;
	int ret;

	ret = FUNC4(ctx, f);
	if (ret)
		return ret;

	vq = FUNC7(ctx->fh.m2m_ctx, f->type);

	if (FUNC8(vq)) {
		FUNC6(&fimc->m2m.vfd, "queue (%d) busy\n", f->type);
		return -EBUSY;
	}

	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		frame = &ctx->s_frame;
	else
		frame = &ctx->d_frame;

	fmt = FUNC3(&f->fmt.pix_mp.pixelformat, NULL,
			       FUNC5(f->type), 0);
	if (!fmt)
		return -EINVAL;

	FUNC0(frame, fmt, &f->fmt.pix_mp);

	/* Update RGB Alpha control state and value range */
	FUNC2(ctx);

	return 0;
}