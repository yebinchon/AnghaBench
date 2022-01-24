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
struct TYPE_8__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_4__ vb2_buf; } ;
struct fimc_frame {int /*<<< orphan*/  paddr; } ;
struct TYPE_6__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int /*<<< orphan*/  slock; TYPE_3__* drv_data; TYPE_2__ m2m; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fimc_ctx {int state; TYPE_1__ fh; struct fimc_frame d_frame; struct fimc_frame s_frame; struct fimc_dev* fimc_dev; } ;
struct TYPE_7__ {scalar_t__ alpha_color; } ;

/* Variables and functions */
 int FIMC_CTX_CAP ; 
 int FIMC_CTX_M2M ; 
 int FIMC_PARAMS ; 
 int /*<<< orphan*/  ST_M2M_PEND ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct fimc_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct fimc_ctx*) ; 
 int FUNC15 (struct fimc_ctx*,TYPE_4__*,struct fimc_frame*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct fimc_ctx*,struct fimc_frame*) ; 
 int FUNC17 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC18 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC22 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC24(void *priv)
{
	struct vb2_v4l2_buffer *src_vb, *dst_vb;
	struct fimc_ctx *ctx = priv;
	struct fimc_frame *sf, *df;
	struct fimc_dev *fimc;
	unsigned long flags;
	int ret;

	if (FUNC0(!ctx, "Null context\n"))
		return;

	fimc = ctx->fimc_dev;
	FUNC20(&fimc->slock, flags);

	FUNC19(ST_M2M_PEND, &fimc->state);
	sf = &ctx->s_frame;
	df = &ctx->d_frame;

	if (ctx->state & FIMC_PARAMS) {
		/* Prepare the DMA offsets for scaler */
		FUNC16(ctx, sf);
		FUNC16(ctx, df);
	}

	src_vb = FUNC23(ctx->fh.m2m_ctx);
	ret = FUNC15(ctx, &src_vb->vb2_buf, sf, &sf->paddr);
	if (ret)
		goto dma_unlock;

	dst_vb = FUNC22(ctx->fh.m2m_ctx);
	ret = FUNC15(ctx, &dst_vb->vb2_buf, df, &df->paddr);
	if (ret)
		goto dma_unlock;

	dst_vb->vb2_buf.timestamp = src_vb->vb2_buf.timestamp;
	dst_vb->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst_vb->flags |=
		src_vb->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

	/* Reconfigure hardware if the context has changed. */
	if (fimc->m2m.ctx != ctx) {
		ctx->state |= FIMC_PARAMS;
		fimc->m2m.ctx = ctx;
	}

	if (ctx->state & FIMC_PARAMS) {
		FUNC18(ctx);
		FUNC6(ctx);
		FUNC4(ctx);
		ret = FUNC17(ctx);
		if (ret)
			goto dma_unlock;
		FUNC11(ctx);
		FUNC7(ctx);
		FUNC14(ctx);
		FUNC13(ctx);
		FUNC3(ctx);
		FUNC8(ctx);
		if (fimc->drv_data->alpha_color)
			FUNC12(ctx);
		FUNC10(ctx);
	}
	FUNC5(fimc, &sf->paddr);
	FUNC9(fimc, &df->paddr, -1);

	FUNC1(ctx);
	ctx->state &= (FIMC_CTX_M2M | FIMC_CTX_CAP);
	FUNC2(fimc, true);

dma_unlock:
	FUNC21(&fimc->slock, flags);
}