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
struct jpu_ctx {TYPE_1__ fh; int /*<<< orphan*/  ctrl_handler; } ;
struct jpu {scalar_t__ ref_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  clk; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct jpu_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jpu_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct jpu* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct jpu *jpu = FUNC9(file);
	struct jpu_ctx *ctx = FUNC1(file->private_data);

	FUNC8(ctx->fh.m2m_ctx);
	FUNC5(&ctx->ctrl_handler);
	FUNC6(&ctx->fh);
	FUNC7(&ctx->fh);
	FUNC2(ctx);

	FUNC3(&jpu->mutex);
	if (--jpu->ref_count == 0)
		FUNC0(jpu->clk);
	FUNC4(&jpu->mutex);

	return 0;
}