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
struct file {int /*<<< orphan*/  private_data; } ;
struct fdp1_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fdp1_ctx {TYPE_1__ fh; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fdp1_dev*,char*,struct fdp1_ctx*) ; 
 struct fdp1_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct fdp1_dev* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct fdp1_dev *fdp1 = FUNC10(file);
	struct fdp1_ctx *ctx = FUNC1(file->private_data);

	FUNC0(fdp1, "Releasing instance %p\n", ctx);

	FUNC7(&ctx->fh);
	FUNC8(&ctx->fh);
	FUNC6(&ctx->hdl);
	FUNC3(&fdp1->dev_mutex);
	FUNC9(ctx->fh.m2m_ctx);
	FUNC4(&fdp1->dev_mutex);
	FUNC2(ctx);

	FUNC5(fdp1->dev);

	return 0;
}