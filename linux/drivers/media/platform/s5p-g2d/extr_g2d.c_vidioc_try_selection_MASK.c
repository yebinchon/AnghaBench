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
struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {scalar_t__ target; TYPE_1__ r; int /*<<< orphan*/  type; } ;
struct g2d_frame {int dummy; } ;
struct g2d_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct g2d_ctx {struct g2d_dev* dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct g2d_frame*) ; 
 int FUNC1 (struct g2d_frame*) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_SEL_TGT_COMPOSE ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 struct g2d_frame* FUNC2 (struct g2d_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *prv,
				const struct v4l2_selection *s)
{
	struct g2d_ctx *ctx = prv;
	struct g2d_dev *dev = ctx->dev;
	struct g2d_frame *f;

	f = FUNC2(ctx, s->type);
	if (FUNC0(f))
		return FUNC1(f);

	if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		if (s->target != V4L2_SEL_TGT_COMPOSE)
			return -EINVAL;
	} else if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
		if (s->target != V4L2_SEL_TGT_CROP)
			return -EINVAL;
	}

	if (s->r.top < 0 || s->r.left < 0) {
		FUNC3(&dev->v4l2_dev,
			"doesn't support negative values for top & left\n");
		return -EINVAL;
	}

	return 0;
}