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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_rdev; } ;
struct file {struct cxl_context* private_data; } ;
struct cxl_context {int /*<<< orphan*/  pe; } ;
struct cxl_afu {int /*<<< orphan*/  current_mode; } ;
struct cxl {int slices; int /*<<< orphan*/  dev; int /*<<< orphan*/  afu_list_lock; struct cxl_afu** afu; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_ok ) (struct cxl*,struct cxl_afu*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*) ; 
 struct cxl_context* FUNC4 () ; 
 int FUNC5 (struct cxl_context*,struct cxl_afu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_context*,int /*<<< orphan*/ ) ; 
 TYPE_1__* cxl_ops ; 
 struct cxl* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct cxl*,struct cxl_afu*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *file, bool master)
{
	struct cxl *adapter;
	struct cxl_afu *afu;
	struct cxl_context *ctx;
	int adapter_num = FUNC0(inode->i_rdev);
	int slice = FUNC1(inode->i_rdev);
	int rc = -ENODEV;

	FUNC8("afu_open afu%i.%i\n", slice, adapter_num);

	if (!(adapter = FUNC7(adapter_num)))
		return -ENODEV;

	if (slice > adapter->slices)
		goto err_put_adapter;

	FUNC10(&adapter->afu_list_lock);
	if (!(afu = adapter->afu[slice])) {
		FUNC11(&adapter->afu_list_lock);
		goto err_put_adapter;
	}

	/*
	 * taking a ref to the afu so that it doesn't go away
	 * for rest of the function. This ref is released before
	 * we return.
	 */
	FUNC2(afu);
	FUNC11(&adapter->afu_list_lock);

	if (!afu->current_mode)
		goto err_put_afu;

	if (!cxl_ops->link_ok(adapter, afu)) {
		rc = -EIO;
		goto err_put_afu;
	}

	if (!(ctx = FUNC4())) {
		rc = -ENOMEM;
		goto err_put_afu;
	}

	rc = FUNC5(ctx, afu, master);
	if (rc)
		goto err_put_afu;

	FUNC6(ctx, inode->i_mapping);

	FUNC8("afu_open pe: %i\n", ctx->pe);
	file->private_data = ctx;

	/* indicate success */
	rc = 0;

err_put_afu:
	/* release the ref taken earlier */
	FUNC3(afu);
err_put_adapter:
	FUNC9(&adapter->dev);
	return rc;
}