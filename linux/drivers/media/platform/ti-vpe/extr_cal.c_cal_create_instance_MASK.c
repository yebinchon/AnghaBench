#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int dummy; } ;
struct cal_dev {int /*<<< orphan*/ * cc; TYPE_1__* pdev; } ;
struct TYPE_5__ {struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/  name; } ;
struct cal_ctx {int csi2_port; TYPE_2__ v4l2_dev; int /*<<< orphan*/  cc; struct v4l2_ctrl_handler ctrl_handler; struct cal_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* CAL_MODULE_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cal_ctx*,char*) ; 
 struct cal_ctx* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cal_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*) ; 
 int FUNC5 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static struct cal_ctx *FUNC8(struct cal_dev *dev, int inst)
{
	struct cal_ctx *ctx;
	struct v4l2_ctrl_handler *hdl;
	int ret;

	ctx = FUNC1(&dev->pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	/* save the cal_dev * for future ref */
	ctx->dev = dev;

	FUNC3(ctx->v4l2_dev.name, sizeof(ctx->v4l2_dev.name),
		 "%s-%03d", CAL_MODULE_NAME, inst);
	ret = FUNC6(&dev->pdev->dev, &ctx->v4l2_dev);
	if (ret)
		goto err_exit;

	hdl = &ctx->ctrl_handler;
	ret = FUNC5(hdl, 11);
	if (ret) {
		FUNC0(ctx, "Failed to init ctrl handler\n");
		goto unreg_dev;
	}
	ctx->v4l2_dev.ctrl_handler = hdl;

	/* Make sure Camera Core H/W register area is available */
	ctx->cc = dev->cc[inst];

	/* Store the instance id */
	ctx->csi2_port = inst + 1;

	ret = FUNC2(ctx, inst);
	if (ret) {
		ret = -EINVAL;
		goto free_hdl;
	}
	return ctx;

free_hdl:
	FUNC4(hdl);
unreg_dev:
	FUNC7(&ctx->v4l2_dev);
err_exit:
	return NULL;
}