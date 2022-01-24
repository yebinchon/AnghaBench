#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct gsc_ctx* ctx; } ;
struct gsc_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; TYPE_1__ m2m; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct gsc_ctx {int state; TYPE_2__ d_frame; TYPE_3__ s_frame; struct gsc_dev* gsc_dev; } ;

/* Variables and functions */
 int GSC_CTX_ABORT ; 
 int GSC_CTX_STOP_REQ ; 
 int /*<<< orphan*/  GSC_M2M_BUF_NUM ; 
 int GSC_PARAMS ; 
 int /*<<< orphan*/  ST_M2M_PEND ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct gsc_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct gsc_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gsc_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct gsc_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gsc_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC18 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC20 (struct gsc_dev*,TYPE_3__*) ; 
 scalar_t__ FUNC21 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC22 (char*,struct gsc_ctx*,struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC28(void *priv)
{
	struct gsc_ctx *ctx = priv;
	struct gsc_dev *gsc;
	unsigned long flags;
	int ret;
	bool is_set = false;

	if (FUNC0(!ctx, "null hardware context\n"))
		return;

	gsc = ctx->gsc_dev;
	FUNC25(&gsc->slock, flags);

	FUNC24(ST_M2M_PEND, &gsc->state);

	/* Reconfigure hardware if the context has changed. */
	if (gsc->m2m.ctx != ctx) {
		FUNC22("gsc->m2m.ctx = 0x%p, current_ctx = 0x%p",
				gsc->m2m.ctx, ctx);
		ctx->state |= GSC_PARAMS;
		gsc->m2m.ctx = ctx;
	}

	is_set = ctx->state & GSC_CTX_STOP_REQ;
	if (is_set) {
		ctx->state &= ~GSC_CTX_STOP_REQ;
		ctx->state |= GSC_CTX_ABORT;
		FUNC27(&gsc->irq_queue);
		goto put_device;
	}

	ret = FUNC1(ctx);
	if (ret) {
		FUNC23("Wrong address");
		goto put_device;
	}

	FUNC20(gsc, &ctx->s_frame);
	FUNC8(gsc, &ctx->s_frame.addr, GSC_M2M_BUF_NUM);
	FUNC14(gsc, &ctx->d_frame.addr, GSC_M2M_BUF_NUM);

	if (ctx->state & GSC_PARAMS) {
		FUNC9(gsc, GSC_M2M_BUF_NUM, false);
		FUNC15(gsc, GSC_M2M_BUF_NUM, false);
		FUNC3(gsc, false);
		FUNC5(gsc, true);

		if (FUNC21(ctx)) {
			FUNC23("Scaler setup error");
			goto put_device;
		}

		FUNC10(ctx);
		FUNC7(ctx);
		FUNC6(ctx);

		FUNC16(ctx);
		FUNC13(ctx);
		FUNC12(ctx);

		FUNC17(ctx);
		FUNC11(ctx);
		FUNC18(ctx);
		FUNC4(ctx);
	}

	/* update shadow registers */
	FUNC19(ctx);

	ctx->state &= ~GSC_PARAMS;
	FUNC2(gsc, true);

	FUNC26(&gsc->slock, flags);
	return;

put_device:
	ctx->state &= ~GSC_PARAMS;
	FUNC26(&gsc->slock, flags);
}