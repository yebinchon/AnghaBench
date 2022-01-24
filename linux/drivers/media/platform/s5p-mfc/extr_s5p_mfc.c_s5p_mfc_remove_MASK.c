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
struct s5p_mfc_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vfd_dec; int /*<<< orphan*/  vfd_enc; int /*<<< orphan*/  watchdog_work; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  mfc_mutex; struct s5p_mfc_ctx** ctx; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int MFC_NUM_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct s5p_mfc_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct s5p_mfc_dev *dev = FUNC4(pdev);
	struct s5p_mfc_ctx *ctx;
	int i;

	FUNC8(&dev->v4l2_dev, "Removing %s\n", pdev->name);

	/*
	 * Clear ctx dev pointer to avoid races between s5p_mfc_remove()
	 * and s5p_mfc_release() and s5p_mfc_release() accessing ctx->dev
	 * after s5p_mfc_remove() is run during unbind.
	*/
	FUNC2(&dev->mfc_mutex);
	for (i = 0; i < MFC_NUM_CONTEXTS; i++) {
		ctx = dev->ctx[i];
		if (!ctx)
			continue;
		/* clear ctx->dev */
		ctx->dev = NULL;
	}
	FUNC3(&dev->mfc_mutex);

	FUNC0(&dev->watchdog_timer);
	FUNC1(&dev->watchdog_work);

	FUNC10(dev->vfd_enc);
	FUNC10(dev->vfd_dec);
	FUNC9(dev->vfd_enc);
	FUNC9(dev->vfd_dec);
	FUNC7(&dev->v4l2_dev);
	FUNC6(dev);

	FUNC5(dev);
	return 0;
}