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
struct vpe_ctx {scalar_t__ sequence; scalar_t__ deinterlacing; int /*<<< orphan*/  dev; } ;
struct vb2_queue {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 scalar_t__ FUNC0 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct vpe_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vpe_ctx*) ; 
 struct vpe_ctx* FUNC3 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vpe_ctx*,struct vb2_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vb2_queue *q, unsigned int count)
{
	struct vpe_ctx *ctx = FUNC3(q);

	/* Check any of the size exceed maximum scaling sizes */
	if (FUNC0(ctx)) {
		FUNC4(ctx->dev,
			"Conversion setup failed, check source and destination parameters\n"
			);
		FUNC5(ctx, q, VB2_BUF_STATE_QUEUED);
		return -EINVAL;
	}

	if (ctx->deinterlacing)
		FUNC1(ctx, 0x0);

	if (ctx->sequence != 0)
		FUNC2(ctx);

	return 0;
}