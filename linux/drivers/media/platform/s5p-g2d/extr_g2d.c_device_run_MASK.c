#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct g2d_dev {int /*<<< orphan*/  ctrl_lock; TYPE_2__* variant; int /*<<< orphan*/  gate; struct g2d_ctx* curr; } ;
struct TYPE_10__ {scalar_t__ c_width; scalar_t__ c_height; } ;
struct TYPE_9__ {scalar_t__ c_width; scalar_t__ c_height; } ;
struct TYPE_7__ {int /*<<< orphan*/  m2m_ctx; } ;
struct g2d_ctx {TYPE_4__ out; TYPE_3__ in; int /*<<< orphan*/  flip; int /*<<< orphan*/  rop; TYPE_1__ fh; struct g2d_dev* dev; } ;
struct TYPE_8__ {scalar_t__ hw_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_V3_ENABLE_STRETCH ; 
 scalar_t__ TYPE_G2D_3X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g2d_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct g2d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g2d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g2d_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct g2d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g2d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g2d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct g2d_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct g2d_dev*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct g2d_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC13 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void *prv)
{
	struct g2d_ctx *ctx = prv;
	struct g2d_dev *dev = ctx->dev;
	struct vb2_v4l2_buffer *src, *dst;
	unsigned long flags;
	u32 cmd = 0;

	dev->curr = ctx;

	src = FUNC14(ctx->fh.m2m_ctx);
	dst = FUNC13(ctx->fh.m2m_ctx);

	FUNC0(dev->gate);
	FUNC1(dev);

	FUNC11(&dev->ctrl_lock, flags);

	FUNC8(dev, &ctx->in);
	FUNC7(dev, FUNC15(&src->vb2_buf, 0));

	FUNC4(dev, &ctx->out);
	FUNC3(dev, FUNC15(&dst->vb2_buf, 0));

	FUNC6(dev, ctx->rop);
	FUNC5(dev, ctx->flip);

	if (ctx->in.c_width != ctx->out.c_width ||
		ctx->in.c_height != ctx->out.c_height) {
		if (dev->variant->hw_rev == TYPE_G2D_3X)
			cmd |= CMD_V3_ENABLE_STRETCH;
		else
			FUNC9(dev, &ctx->in, &ctx->out);
	}

	FUNC2(dev, cmd);
	FUNC10(dev);

	FUNC12(&dev->ctrl_lock, flags);
}