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
typedef  int /*<<< orphan*/  u32 ;
struct fastrpc_user {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; int /*<<< orphan*/  tgid; struct fastrpc_channel_ctx* cctx; } ;
struct fastrpc_invoke_ctx {int retval; int ctxid; struct fastrpc_invoke_ctx* olaps; struct fastrpc_invoke_ctx* maps; int /*<<< orphan*/  node; int /*<<< orphan*/  refcount; int /*<<< orphan*/  put_work; int /*<<< orphan*/  work; struct fastrpc_channel_ctx* cctx; int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; int /*<<< orphan*/  sc; struct fastrpc_invoke_args* args; scalar_t__ nscalars; scalar_t__ nbufs; struct fastrpc_user* fl; } ;
struct fastrpc_invoke_args {int dummy; } ;
struct fastrpc_channel_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx_idr; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fastrpc_invoke_ctx* FUNC0 (int) ; 
 int /*<<< orphan*/  FASTRPC_CTX_MAX ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct fastrpc_channel_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct fastrpc_channel_ctx*) ; 
 int /*<<< orphan*/  fastrpc_context_put_wq ; 
 int /*<<< orphan*/  FUNC8 (struct fastrpc_invoke_ctx*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct fastrpc_invoke_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fastrpc_invoke_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct fastrpc_invoke_ctx* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct fastrpc_invoke_ctx *FUNC21(
			struct fastrpc_user *user, u32 kernel, u32 sc,
			struct fastrpc_invoke_args *args)
{
	struct fastrpc_channel_ctx *cctx = user->cctx;
	struct fastrpc_invoke_ctx *ctx = NULL;
	unsigned long flags;
	int ret;

	ctx = FUNC14(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);

	FUNC1(&ctx->node);
	ctx->fl = user;
	ctx->nscalars = FUNC4(sc);
	ctx->nbufs = FUNC3(sc) +
		     FUNC5(sc);

	if (ctx->nscalars) {
		ctx->maps = FUNC11(ctx->nscalars,
				    sizeof(*ctx->maps), GFP_KERNEL);
		if (!ctx->maps) {
			FUNC12(ctx);
			return FUNC0(-ENOMEM);
		}
		ctx->olaps = FUNC11(ctx->nscalars,
				    sizeof(*ctx->olaps), GFP_KERNEL);
		if (!ctx->olaps) {
			FUNC12(ctx->maps);
			FUNC12(ctx);
			return FUNC0(-ENOMEM);
		}
		ctx->args = args;
		FUNC8(ctx);
	}

	/* Released in fastrpc_context_put() */
	FUNC6(cctx);

	ctx->sc = sc;
	ctx->retval = -1;
	ctx->pid = current->pid;
	ctx->tgid = user->tgid;
	ctx->cctx = cctx;
	FUNC10(&ctx->work);
	FUNC2(&ctx->put_work, fastrpc_context_put_wq);

	FUNC17(&user->lock);
	FUNC15(&ctx->node, &user->pending);
	FUNC19(&user->lock);

	FUNC18(&cctx->lock, flags);
	ret = FUNC9(&cctx->ctx_idr, ctx, 1,
			       FASTRPC_CTX_MAX, GFP_ATOMIC);
	if (ret < 0) {
		FUNC20(&cctx->lock, flags);
		goto err_idr;
	}
	ctx->ctxid = ret << 4;
	FUNC20(&cctx->lock, flags);

	FUNC13(&ctx->refcount);

	return ctx;
err_idr:
	FUNC17(&user->lock);
	FUNC16(&ctx->node);
	FUNC19(&user->lock);
	FUNC7(cctx);
	FUNC12(ctx->maps);
	FUNC12(ctx->olaps);
	FUNC12(ctx);

	return FUNC0(ret);
}