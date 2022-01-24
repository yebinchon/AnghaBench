#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ refcnt; } ;
struct fimc_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__ m2m; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fimc_ctx {TYPE_2__ fh; struct fimc_dev* fimc_dev; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_M2M_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct fimc_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct fimc_ctx *ctx = FUNC2(file->private_data);
	struct fimc_dev *fimc = ctx->fimc_dev;

	FUNC1("pid: %d, state: 0x%lx, refcnt= %d",
		FUNC7(current), fimc->state, fimc->m2m.refcnt);

	FUNC5(&fimc->lock);

	FUNC10(ctx->fh.m2m_ctx);
	FUNC3(ctx);
	FUNC8(&ctx->fh);
	FUNC9(&ctx->fh);

	if (--fimc->m2m.refcnt <= 0)
		FUNC0(ST_M2M_RUN, &fimc->state);
	FUNC4(ctx);

	FUNC6(&fimc->lock);
	return 0;
}