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
struct vb2_queue {int /*<<< orphan*/  drv_priv; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_ops; } ;
struct s5p_mfc_ctx {scalar_t__ state; int /*<<< orphan*/  ctrl_handler; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 scalar_t__ MFCINST_FINISHED ; 
 scalar_t__ MFCINST_FINISHING ; 
 scalar_t__ MFCINST_RUNNING ; 
 struct s5p_mfc_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  try_run ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *q, unsigned int count)
{
	struct s5p_mfc_ctx *ctx = FUNC0(q->drv_priv);
	struct s5p_mfc_dev *dev = ctx->dev;

	FUNC4(&ctx->ctrl_handler);
	if (ctx->state == MFCINST_FINISHING ||
		ctx->state == MFCINST_FINISHED)
		ctx->state = MFCINST_RUNNING;
	/* If context is ready then dev = work->data;schedule it to run */
	if (FUNC1(ctx))
		FUNC3(ctx);
	FUNC2(dev->mfc_ops, try_run, dev);
	return 0;
}