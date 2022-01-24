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
typedef  int /*<<< orphan*/  u32 ;
struct fastrpc_user {TYPE_2__* sctx; int /*<<< orphan*/  lock; TYPE_1__* cctx; } ;
struct fastrpc_invoke_ctx {int retval; int /*<<< orphan*/  node; scalar_t__ nscalars; int /*<<< orphan*/  work; } ;
struct fastrpc_invoke_args {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rpdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 scalar_t__ FUNC0 (struct fastrpc_invoke_ctx*) ; 
 int FUNC1 (struct fastrpc_invoke_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct fastrpc_invoke_ctx* FUNC5 (struct fastrpc_user*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fastrpc_invoke_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct fastrpc_invoke_ctx*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct fastrpc_invoke_ctx*) ; 
 int FUNC8 (TYPE_2__*,struct fastrpc_invoke_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct fastrpc_invoke_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct fastrpc_user *fl,  u32 kernel,
				   u32 handle, u32 sc,
				   struct fastrpc_invoke_args *args)
{
	struct fastrpc_invoke_ctx *ctx = NULL;
	int err = 0;

	if (!fl->sctx)
		return -EINVAL;

	if (!fl->cctx->rpdev)
		return -EPIPE;

	ctx = FUNC5(fl, kernel, sc, args);
	if (FUNC0(ctx))
		return FUNC1(ctx);

	if (ctx->nscalars) {
		err = FUNC7(kernel, ctx);
		if (err)
			goto bail;
	}

	/* make sure that all CPU memory writes are seen by DSP */
	FUNC4();
	/* Send invoke buffer to remote dsp */
	err = FUNC8(fl->sctx, ctx, kernel, handle);
	if (err)
		goto bail;

	/* Wait for remote dsp to respond or time out */
	err = FUNC13(&ctx->work);
	if (err)
		goto bail;

	/* Check the response from remote dsp */
	err = ctx->retval;
	if (err)
		goto bail;

	if (ctx->nscalars) {
		/* make sure that all memory writes by DSP are seen by CPU */
		FUNC3();
		/* populate all the output buffers with results */
		err = FUNC9(ctx, kernel);
		if (err)
			goto bail;
	}

bail:
	/* We are done with this compute context, remove it from pending list */
	FUNC11(&fl->lock);
	FUNC10(&ctx->node);
	FUNC12(&fl->lock);
	FUNC6(ctx);

	if (err)
		FUNC2(fl->sctx->dev, "Error: Invoke Failed %d\n", err);

	return err;
}