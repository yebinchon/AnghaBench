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
struct pxp_dev {int /*<<< orphan*/  num_inst; int /*<<< orphan*/  dev_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; int /*<<< orphan*/  hdl; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pxp_dev*,char*,struct pxp_ctx*) ; 
 struct pxp_ctx* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxp_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct pxp_dev* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct pxp_dev *dev = FUNC10(file);
	struct pxp_ctx *ctx = FUNC2(file);

	FUNC1(dev, "Releasing instance %p\n", ctx);

	FUNC7(&ctx->fh);
	FUNC8(&ctx->fh);
	FUNC6(&ctx->hdl);
	FUNC4(&dev->dev_mutex);
	FUNC9(ctx->fh.m2m_ctx);
	FUNC5(&dev->dev_mutex);
	FUNC3(ctx);

	FUNC0(&dev->num_inst);

	return 0;
}