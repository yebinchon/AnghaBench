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
struct vpe_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  num_instances; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vpe_ctx {TYPE_1__ fh; int /*<<< orphan*/  hdl; int /*<<< orphan*/  sc_coeff_h; int /*<<< orphan*/  sc_coeff_v; int /*<<< orphan*/  mmr_adb; int /*<<< orphan*/  desc_list; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct vpe_ctx* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct vpe_dev* FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct vpe_dev*,char*,...) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct vpe_dev *dev = FUNC10(file);
	struct vpe_ctx *ctx = FUNC1(file);

	FUNC13(dev, "releasing instance %p\n", ctx);

	FUNC4(&dev->dev_mutex);
	FUNC2(ctx);
	FUNC12(&ctx->desc_list);
	FUNC11(&ctx->mmr_adb);

	FUNC11(&ctx->sc_coeff_v);
	FUNC11(&ctx->sc_coeff_h);

	FUNC7(&ctx->fh);
	FUNC8(&ctx->fh);
	FUNC6(&ctx->hdl);
	FUNC9(ctx->fh.m2m_ctx);

	FUNC3(ctx);

	/*
	 * for now, just report the release of the last instance, we can later
	 * optimize the driver to enable or disable clocks when the first
	 * instance is created or the last instance released
	 */
	if (FUNC0(&dev->num_instances) == 0)
		FUNC13(dev, "last instance released\n");

	FUNC5(&dev->dev_mutex);

	return 0;
}