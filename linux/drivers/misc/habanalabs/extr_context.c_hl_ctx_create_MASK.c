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
struct hl_ctx_mgr {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_handles; } ;
struct hl_fpriv {struct hl_ctx* ctx; struct hl_ctx_mgr ctx_mgr; } ;
struct hl_device {struct hl_ctx* compute_ctx; int /*<<< orphan*/  dev; } ;
struct hl_ctx {int handle; struct hl_fpriv* hpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hl_device*,struct hl_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_fpriv*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hl_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_ctx*) ; 
 struct hl_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct hl_device *hdev, struct hl_fpriv *hpriv)
{
	struct hl_ctx_mgr *mgr = &hpriv->ctx_mgr;
	struct hl_ctx *ctx;
	int rc;

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		rc = -ENOMEM;
		goto out_err;
	}

	FUNC7(&mgr->ctx_lock);
	rc = FUNC3(&mgr->ctx_handles, ctx, 1, 0, GFP_KERNEL);
	FUNC8(&mgr->ctx_lock);

	if (rc < 0) {
		FUNC0(hdev->dev, "Failed to allocate IDR for a new CTX\n");
		goto free_ctx;
	}

	ctx->handle = rc;

	rc = FUNC1(hdev, ctx, false);
	if (rc)
		goto remove_from_idr;

	FUNC2(hpriv);
	ctx->hpriv = hpriv;

	/* TODO: remove for multiple contexts per process */
	hpriv->ctx = ctx;

	/* TODO: remove the following line for multiple process support */
	hdev->compute_ctx = ctx;

	return 0;

remove_from_idr:
	FUNC7(&mgr->ctx_lock);
	FUNC4(&mgr->ctx_handles, ctx->handle);
	FUNC8(&mgr->ctx_lock);
free_ctx:
	FUNC5(ctx);
out_err:
	return rc;
}