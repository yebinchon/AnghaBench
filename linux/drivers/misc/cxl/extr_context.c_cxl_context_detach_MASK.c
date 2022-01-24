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
struct cxl_context {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int FUNC0 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*,struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cxl_context *ctx)
{
	int rc;

	rc = FUNC0(ctx);
	if (rc)
		return;

	FUNC1(ctx, ctx);
	FUNC2(&ctx->wq);
}