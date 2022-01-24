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
struct s5p_mfc_dev {scalar_t__ curr_ctx; scalar_t__ num_inst; int /*<<< orphan*/  mfc_mutex; int /*<<< orphan*/ ** ctx; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  hw_lock; } ;
struct s5p_mfc_ctx {scalar_t__ state; scalar_t__ num; int /*<<< orphan*/  fh; int /*<<< orphan*/  vq_dst; int /*<<< orphan*/  vq_src; struct s5p_mfc_dev* dev; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 scalar_t__ MFCINST_FREE ; 
 scalar_t__ MFCINST_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5p_mfc_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct s5p_mfc_dev*,struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct file *file)
{
	struct s5p_mfc_ctx *ctx = FUNC3(file->private_data);
	struct s5p_mfc_dev *dev = ctx->dev;

	/* if dev is null, do cleanup that doesn't need dev */
	FUNC6();
	if (dev)
		FUNC9(&dev->mfc_mutex);
	FUNC19(&ctx->vq_src);
	FUNC19(&ctx->vq_dst);
	if (dev) {
		FUNC12();

		/* Mark context as idle */
		FUNC1(ctx);
		/*
		 * If instance was initialised and not yet freed,
		 * return instance and free resources
		*/
		if (ctx->state != MFCINST_FREE && ctx->state != MFCINST_INIT) {
			FUNC5(2, "Has to free instance\n");
			FUNC13(dev, ctx);
		}
		/* hardware locking scheme */
		if (dev->curr_ctx == ctx->num)
			FUNC0(0, &dev->hw_lock);
		dev->num_inst--;
		if (dev->num_inst == 0) {
			FUNC5(2, "Last instance\n");
			FUNC15(dev);
			FUNC2(&dev->watchdog_timer);
			FUNC11();
			if (FUNC16() < 0)
				FUNC8("Power off failed\n");
		} else {
			FUNC5(2, "Shutting down clock\n");
			FUNC11();
		}
	}
	if (dev)
		dev->ctx[ctx->num] = NULL;
	FUNC14(ctx);
	FUNC17(&ctx->fh);
	/* vdev is gone if dev is null */
	if (dev)
		FUNC18(&ctx->fh);
	FUNC4(ctx);
	FUNC7();
	if (dev)
		FUNC10(&dev->mfc_mutex);

	return 0;
}