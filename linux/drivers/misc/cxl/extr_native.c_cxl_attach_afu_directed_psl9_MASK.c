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
typedef  int /*<<< orphan*/  u64 ;
struct cxl_context {int /*<<< orphan*/  afu; } ;
struct TYPE_2__ {int (* afu_check_and_enable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct cxl_context*) ; 
 TYPE_1__* cxl_ops ; 
 int FUNC1 (struct cxl_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_context*) ; 

int FUNC4(struct cxl_context *ctx, u64 wed, u64 amr)
{
	int result;

	/* fill the process element entry */
	result = FUNC1(ctx, wed, amr);
	if (result)
		return result;

	FUNC3(ctx);

	/* first guy needs to enable */
	result = cxl_ops->afu_check_and_enable(ctx->afu);
	if (result)
		return result;

	return FUNC0(ctx);
}