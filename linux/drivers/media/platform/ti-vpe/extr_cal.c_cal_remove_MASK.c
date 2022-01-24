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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cal_dev {struct cal_ctx** ctx; } ;
struct cal_ctx {int /*<<< orphan*/  vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_MODULE_NAME ; 
 int CAL_NUM_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int,struct cal_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cal_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cal_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cal_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct cal_ctx*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct cal_dev *dev =
		(struct cal_dev *)FUNC5(pdev);
	struct cal_ctx *ctx;
	int i;

	FUNC0(1, dev, "Removing %s\n", CAL_MODULE_NAME);

	FUNC1(dev);

	for (i = 0; i < CAL_NUM_CONTEXT; i++) {
		ctx = dev->ctx[i];
		if (ctx) {
			FUNC4(1, ctx, "unregistering %s\n",
				FUNC11(&ctx->vdev));
			FUNC3(ctx);
			FUNC8(&ctx->notifier);
			FUNC7(&ctx->notifier);
			FUNC9(&ctx->ctrl_handler);
			FUNC10(&ctx->v4l2_dev);
			FUNC12(&ctx->vdev);
		}
	}

	FUNC2(dev);
	FUNC6(&pdev->dev);

	return 0;
}