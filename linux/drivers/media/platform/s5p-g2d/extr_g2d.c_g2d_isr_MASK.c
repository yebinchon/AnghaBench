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
struct TYPE_3__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_1__ vb2_buf; int /*<<< orphan*/  timecode; } ;
struct g2d_dev {struct g2d_ctx* curr; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  gate; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct g2d_ctx {TYPE_2__ fh; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g2d_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *prv)
{
	struct g2d_dev *dev = prv;
	struct g2d_ctx *ctx = dev->curr;
	struct vb2_v4l2_buffer *src, *dst;

	FUNC2(dev);
	FUNC1(dev->gate);

	FUNC0(ctx == NULL);

	src = FUNC6(ctx->fh.m2m_ctx);
	dst = FUNC4(ctx->fh.m2m_ctx);

	FUNC0(src == NULL);
	FUNC0(dst == NULL);

	dst->timecode = src->timecode;
	dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
	dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst->flags |=
		src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

	FUNC3(src, VB2_BUF_STATE_DONE);
	FUNC3(dst, VB2_BUF_STATE_DONE);
	FUNC5(dev->m2m_dev, ctx->fh.m2m_ctx);

	dev->curr = NULL;
	return IRQ_HANDLED;
}