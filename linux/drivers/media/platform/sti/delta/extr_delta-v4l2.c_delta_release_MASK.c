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
struct delta_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ clk_flash_promip; scalar_t__ clk_st231; } ;
struct delta_dec {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct delta_ctx {int /*<<< orphan*/  name; TYPE_1__ fh; struct delta_dec* dec; struct delta_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delta_dec const*,int /*<<< orphan*/ ,struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  FUNC2 (struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct delta_ctx* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct delta_ctx *ctx = FUNC7(file->private_data);
	struct delta_dev *delta = ctx->dev;
	const struct delta_dec *dec = ctx->dec;

	FUNC5(&delta->lock);

	/* close decoder */
	FUNC0(dec, close, ctx);

	/*
	 * trace a summary of instance
	 * before closing (debug purpose)
	 */
	FUNC2(ctx);

	FUNC10(ctx->fh.m2m_ctx);

	FUNC8(&ctx->fh);
	FUNC9(&ctx->fh);

	/* disable ST231 clocks */
	if (delta->clk_st231)
		FUNC1(delta->clk_st231);

	/* disable FLASH_PROMIP clock */
	if (delta->clk_flash_promip)
		FUNC1(delta->clk_flash_promip);

	FUNC3(delta->dev, "%s decoder instance released\n", ctx->name);

	FUNC4(ctx);

	FUNC6(&delta->lock);
	return 0;
}