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
struct ocxl_context {int pasid; scalar_t__ tidr; int /*<<< orphan*/  irq_idr; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  xsl_error_lock; int /*<<< orphan*/  events_wq; int /*<<< orphan*/  mapping_lock; struct address_space* mapping; int /*<<< orphan*/  status_mutex; int /*<<< orphan*/  status; struct ocxl_afu* afu; } ;
struct ocxl_afu {int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  pasid_count; scalar_t__ pasid_max; scalar_t__ pasid_base; int /*<<< orphan*/  contexts_idr; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OPENED ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ocxl_context*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ocxl_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ocxl_afu*) ; 

int FUNC8(struct ocxl_context **context, struct ocxl_afu *afu,
		struct address_space *mapping)
{
	int pasid;
	struct ocxl_context *ctx;

	*context = FUNC3(sizeof(struct ocxl_context), GFP_KERNEL);
	if (!*context)
		return -ENOMEM;

	ctx = *context;

	ctx->afu = afu;
	FUNC5(&afu->contexts_lock);
	pasid = FUNC0(&afu->contexts_idr, ctx, afu->pasid_base,
			afu->pasid_base + afu->pasid_max, GFP_KERNEL);
	if (pasid < 0) {
		FUNC6(&afu->contexts_lock);
		return pasid;
	}
	afu->pasid_count++;
	FUNC6(&afu->contexts_lock);

	ctx->pasid = pasid;
	ctx->status = OPENED;
	FUNC4(&ctx->status_mutex);
	ctx->mapping = mapping;
	FUNC4(&ctx->mapping_lock);
	FUNC2(&ctx->events_wq);
	FUNC4(&ctx->xsl_error_lock);
	FUNC4(&ctx->irq_lock);
	FUNC1(&ctx->irq_idr);
	ctx->tidr = 0;

	/*
	 * Keep a reference on the AFU to make sure it's valid for the
	 * duration of the life of the context
	 */
	FUNC7(afu);
	return 0;
}