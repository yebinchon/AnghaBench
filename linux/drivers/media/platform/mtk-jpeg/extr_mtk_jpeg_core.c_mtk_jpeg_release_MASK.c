#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtk_jpeg_dev {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_jpeg_ctx*) ; 
 struct mtk_jpeg_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_dev* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct mtk_jpeg_dev *jpeg = FUNC7(file);
	struct mtk_jpeg_ctx *ctx = FUNC1(file->private_data);

	FUNC2(&jpeg->lock);
	FUNC6(ctx->fh.m2m_ctx);
	FUNC4(&ctx->fh);
	FUNC5(&ctx->fh);
	FUNC0(ctx);
	FUNC3(&jpeg->lock);
	return 0;
}