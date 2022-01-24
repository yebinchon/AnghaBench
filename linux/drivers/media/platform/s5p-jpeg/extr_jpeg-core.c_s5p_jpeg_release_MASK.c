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
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; } ;
struct s5p_jpeg {int /*<<< orphan*/  lock; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 struct s5p_jpeg_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct s5p_jpeg* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct s5p_jpeg *jpeg = FUNC8(file);
	struct s5p_jpeg_ctx *ctx = FUNC0(file->private_data);

	FUNC2(&jpeg->lock);
	FUNC7(ctx->fh.m2m_ctx);
	FUNC4(&ctx->ctrl_handler);
	FUNC5(&ctx->fh);
	FUNC6(&ctx->fh);
	FUNC1(ctx);
	FUNC3(&jpeg->lock);

	return 0;
}