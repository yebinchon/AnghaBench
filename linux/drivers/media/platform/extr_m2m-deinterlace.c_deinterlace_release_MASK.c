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
struct file {struct deinterlace_ctx* private_data; } ;
struct deinterlace_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct deinterlace_ctx {struct deinterlace_ctx* xt; TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct deinterlace_dev*,char*,struct deinterlace_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct deinterlace_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct deinterlace_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct deinterlace_dev *pcdev = FUNC5(file);
	struct deinterlace_ctx *ctx = file->private_data;

	FUNC0(pcdev, "Releasing instance %p\n", ctx);

	FUNC2(&ctx->fh);
	FUNC3(&ctx->fh);
	FUNC4(ctx->fh.m2m_ctx);
	FUNC1(ctx->xt);
	FUNC1(ctx);

	return 0;
}