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
typedef  void* u64 ;
struct TYPE_2__ {int /*<<< orphan*/  count; void* dsisr; void* addr; } ;
struct ocxl_context {int /*<<< orphan*/  events_wq; int /*<<< orphan*/  xsl_error_lock; TYPE_1__ xsl_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data, u64 addr, u64 dsisr)
{
	struct ocxl_context *ctx = (struct ocxl_context *) data;

	FUNC0(&ctx->xsl_error_lock);
	ctx->xsl_error.addr = addr;
	ctx->xsl_error.dsisr = dsisr;
	ctx->xsl_error.count++;
	FUNC1(&ctx->xsl_error_lock);

	FUNC2(&ctx->events_wq);
}