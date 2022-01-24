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
struct mtk_vcodec_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  pm; } ;
struct mtk_vcodec_ctx {struct mtk_vcodec_ctx* empty_flush_buf; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl_hdl; int /*<<< orphan*/  fh; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  id; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 struct mtk_vcodec_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_dev* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct mtk_vcodec_dev *dev = FUNC13(file);
	struct mtk_vcodec_ctx *ctx = FUNC0(file->private_data);

	FUNC3(0, "[%d] decoder", ctx->id);
	FUNC6(&dev->dev_mutex);

	/*
	 * Call v4l2_m2m_ctx_release before mtk_vcodec_dec_release. First, it
	 * makes sure the worker thread is not running after vdec_if_deinit.
	 * Second, the decoder will be flushed and all the buffers will be
	 * returned in stop_streaming.
	 */
	FUNC12(ctx->m2m_ctx);
	FUNC5(ctx);

	if (FUNC11(&ctx->fh))
		FUNC4(&dev->pm);
	FUNC9(&ctx->fh);
	FUNC10(&ctx->fh);
	FUNC8(&ctx->ctrl_hdl);

	FUNC2(&ctx->list);
	FUNC1(ctx->empty_flush_buf);
	FUNC1(ctx);
	FUNC7(&dev->dev_mutex);
	return 0;
}