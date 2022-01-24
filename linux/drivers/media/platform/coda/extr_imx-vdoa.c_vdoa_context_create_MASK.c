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
struct vdoa_data {int /*<<< orphan*/  vdoa_clk; } ;
struct vdoa_ctx {struct vdoa_data* vdoa; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vdoa_ctx*) ; 
 struct vdoa_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct vdoa_ctx *FUNC4(struct vdoa_data *vdoa)
{
	struct vdoa_ctx *ctx;
	int err;

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	err = FUNC0(vdoa->vdoa_clk);
	if (err) {
		FUNC2(ctx);
		return NULL;
	}

	FUNC1(&ctx->completion);
	ctx->vdoa = vdoa;

	return ctx;
}