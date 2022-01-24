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
typedef  int /*<<< orphan*/  u64 ;
struct ocxl_context {scalar_t__ status; int /*<<< orphan*/  status_mutex; int /*<<< orphan*/  tidr; int /*<<< orphan*/  pasid; TYPE_3__* afu; } ;
struct TYPE_4__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_6__ {TYPE_2__* fn; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ ATTACHED ; 
 int EIO ; 
 scalar_t__ OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mm_struct*,int /*<<< orphan*/ ,struct ocxl_context*) ; 
 int /*<<< orphan*/  xsl_fault_error ; 

int FUNC3(struct ocxl_context *ctx, u64 amr, struct mm_struct *mm)
{
	int rc;
	unsigned long pidr = 0;

	// Locks both status & tidr
	FUNC0(&ctx->status_mutex);
	if (ctx->status != OPENED) {
		rc = -EIO;
		goto out;
	}

	if (mm)
		pidr = mm->context.id;

	rc = FUNC2(ctx->afu->fn->link, ctx->pasid, pidr, ctx->tidr,
			      amr, mm, xsl_fault_error, ctx);
	if (rc)
		goto out;

	ctx->status = ATTACHED;
out:
	FUNC1(&ctx->status_mutex);
	return rc;
}