#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct mtk_mdp_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx_num; TYPE_5__* pdev; int /*<<< orphan*/  ctx_list; int /*<<< orphan*/  vpu_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  id_counter; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct mtk_mdp_ctx {TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  m2m_ctx; scalar_t__ id; int /*<<< orphan*/  list; int /*<<< orphan*/  work; struct mtk_mdp_dev* mdp_dev; int /*<<< orphan*/  slock; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_mdp_ctx*) ; 
 struct mtk_mdp_ctx* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mtk_mdp_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mtk_mdp_m2m_queue_init ; 
 int /*<<< orphan*/  mtk_mdp_m2m_worker ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_mdp_ctx*) ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct mtk_mdp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC23 (struct file*) ; 
 struct mtk_mdp_dev* FUNC24 (struct file*) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct file *file)
{
	struct mtk_mdp_dev *mdp = FUNC24(file);
	struct video_device *vfd = FUNC23(file);
	struct mtk_mdp_ctx *ctx = NULL;
	int ret;

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	if (FUNC14(&mdp->lock)) {
		ret = -ERESTARTSYS;
		goto err_lock;
	}

	FUNC13(&ctx->slock);
	ctx->id = mdp->id_counter++;
	FUNC20(&ctx->fh, vfd);
	file->private_data = &ctx->fh;
	ret = FUNC9(ctx);
	if (ret)
		goto error_ctrls;

	/* Use separate control handler per file handle */
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;
	FUNC17(&ctx->fh);
	FUNC0(&ctx->list);

	ctx->mdp_dev = mdp;
	FUNC11(ctx);

	FUNC1(&ctx->work, mtk_mdp_m2m_worker);
	ctx->m2m_ctx = FUNC21(mdp->m2m_dev, ctx,
					 mtk_mdp_m2m_queue_init);
	if (FUNC2(ctx->m2m_ctx)) {
		FUNC4(&mdp->pdev->dev, "Failed to initialize m2m context");
		ret = FUNC3(ctx->m2m_ctx);
		goto error_m2m_ctx;
	}
	ctx->fh.m2m_ctx = ctx->m2m_ctx;
	if (mdp->ctx_num++ == 0) {
		ret = FUNC25(mdp->vpu_dev);
		if (ret < 0) {
			FUNC4(&mdp->pdev->dev,
				"vpu_load_firmware failed %d\n", ret);
			goto err_load_vpu;
		}

		ret = FUNC12(mdp->pdev);
		if (ret < 0) {
			FUNC4(&mdp->pdev->dev,
				"mdp_vpu register failed %d\n", ret);
			goto err_load_vpu;
		}
	}

	FUNC8(&ctx->list, &mdp->ctx_list);
	FUNC15(&mdp->lock);

	FUNC10(0, "%s [%d]", FUNC5(&mdp->pdev->dev), ctx->id);

	return 0;

err_load_vpu:
	mdp->ctx_num--;
	FUNC22(ctx->m2m_ctx);
error_m2m_ctx:
	FUNC16(&ctx->ctrl_handler);
error_ctrls:
	FUNC18(&ctx->fh);
	FUNC19(&ctx->fh);
	FUNC15(&mdp->lock);
err_lock:
	FUNC6(ctx);

	return ret;
}