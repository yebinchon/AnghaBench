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
struct mtk_vcodec_dev {int /*<<< orphan*/  dev_mutex; } ;
struct mtk_vcodec_ctx {int /*<<< orphan*/  list; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  ctrl_hdl; int /*<<< orphan*/  fh; int /*<<< orphan*/  id; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 struct mtk_vcodec_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_dev* FUNC11 (struct file*) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct mtk_vcodec_dev *dev = FUNC11(file);
	struct mtk_vcodec_ctx *ctx = FUNC0(file->private_data);

	FUNC3(1, "[%d] encoder", ctx->id);
	FUNC5(&dev->dev_mutex);

	FUNC4(ctx);
	FUNC8(&ctx->fh);
	FUNC9(&ctx->fh);
	FUNC7(&ctx->ctrl_hdl);
	FUNC10(ctx->m2m_ctx);

	FUNC2(&ctx->list);
	FUNC1(ctx);
	FUNC6(&dev->dev_mutex);
	return 0;
}