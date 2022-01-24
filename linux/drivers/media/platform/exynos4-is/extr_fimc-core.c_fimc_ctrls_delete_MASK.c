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
struct fimc_ctrls {int ready; int /*<<< orphan*/ * alpha; int /*<<< orphan*/  handler; } ;
struct fimc_ctx {struct fimc_ctrls ctrls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct fimc_ctx *ctx)
{
	struct fimc_ctrls *ctrls = &ctx->ctrls;

	if (ctrls->ready) {
		FUNC0(&ctrls->handler);
		ctrls->ready = false;
		ctrls->alpha = NULL;
	}
}