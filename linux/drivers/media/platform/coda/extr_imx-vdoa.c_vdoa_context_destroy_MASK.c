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
struct vdoa_data {int /*<<< orphan*/  vdoa_clk; struct vdoa_ctx* curr_ctx; } ;
struct vdoa_ctx {struct vdoa_data* vdoa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vdoa_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdoa_ctx*) ; 

void FUNC3(struct vdoa_ctx *ctx)
{
	struct vdoa_data *vdoa = ctx->vdoa;

	if (vdoa->curr_ctx == ctx) {
		FUNC2(vdoa->curr_ctx);
		vdoa->curr_ctx = NULL;
	}

	FUNC0(vdoa->vdoa_clk);
	FUNC1(ctx);
}