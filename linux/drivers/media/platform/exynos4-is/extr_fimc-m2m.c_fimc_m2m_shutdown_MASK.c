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
struct fimc_dev {int /*<<< orphan*/  irq_queue; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_CTX_SHUT ; 
 int /*<<< orphan*/  FIMC_SHUTDOWN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fimc_ctx *ctx)
{
	struct fimc_dev *fimc = ctx->fimc_dev;

	if (!FUNC2(fimc))
		return;

	FUNC1(FIMC_CTX_SHUT, ctx);

	FUNC3(fimc->irq_queue,
			!FUNC0(FIMC_CTX_SHUT, ctx),
			FIMC_SHUTDOWN_TIMEOUT);
}