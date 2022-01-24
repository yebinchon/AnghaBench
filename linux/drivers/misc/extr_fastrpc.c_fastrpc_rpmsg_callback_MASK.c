#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct fastrpc_invoke_rsp {int ctx; int /*<<< orphan*/  retval; } ;
struct fastrpc_invoke_ctx {int /*<<< orphan*/  put_work; int /*<<< orphan*/  work; int /*<<< orphan*/  retval; } ;
struct fastrpc_channel_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx_idr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FASTRPC_CTXID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct fastrpc_channel_ctx* FUNC2 (int /*<<< orphan*/ *) ; 
 struct fastrpc_invoke_ctx* FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct rpmsg_device *rpdev, void *data,
				  int len, void *priv, u32 addr)
{
	struct fastrpc_channel_ctx *cctx = FUNC2(&rpdev->dev);
	struct fastrpc_invoke_rsp *rsp = data;
	struct fastrpc_invoke_ctx *ctx;
	unsigned long flags;
	unsigned long ctxid;

	if (len < sizeof(*rsp))
		return -EINVAL;

	ctxid = ((rsp->ctx & FASTRPC_CTXID_MASK) >> 4);

	FUNC5(&cctx->lock, flags);
	ctx = FUNC3(&cctx->ctx_idr, ctxid);
	FUNC6(&cctx->lock, flags);

	if (!ctx) {
		FUNC1(&rpdev->dev, "No context ID matches response\n");
		return -ENOENT;
	}

	ctx->retval = rsp->retval;
	FUNC0(&ctx->work);

	/*
	 * The DMA buffer associated with the context cannot be freed in
	 * interrupt context so schedule it through a worker thread to
	 * avoid a kernel BUG.
	 */
	FUNC4(&ctx->put_work);

	return 0;
}