#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtk_mdp_dev {int /*<<< orphan*/  lock; TYPE_1__* pdev; int /*<<< orphan*/  ctx_num; int /*<<< orphan*/  job_wq; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  id; int /*<<< orphan*/  list; int /*<<< orphan*/  vpu; int /*<<< orphan*/  fh; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  m2m_ctx; struct mtk_mdp_dev* mdp_dev; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mtk_mdp_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_mdp_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct mtk_mdp_ctx *ctx = FUNC1(file->private_data);
	struct mtk_mdp_dev *mdp = ctx->mdp_dev;

	FUNC2(mdp->job_wq);
	FUNC7(&mdp->lock);
	FUNC12(ctx->m2m_ctx);
	FUNC9(&ctx->ctrl_handler);
	FUNC10(&ctx->fh);
	FUNC11(&ctx->fh);
	FUNC6(&ctx->vpu);
	mdp->ctx_num--;
	FUNC4(&ctx->list);

	FUNC5(0, "%s [%d]", FUNC0(&mdp->pdev->dev), ctx->id);

	FUNC8(&mdp->lock);
	FUNC3(ctx);

	return 0;
}