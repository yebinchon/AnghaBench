#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fimc_ctx {int state; TYPE_1__* fimc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline bool FUNC2(u32 mask, struct fimc_ctx *ctx)
{
	unsigned long flags;
	bool ret;

	FUNC0(&ctx->fimc_dev->slock, flags);
	ret = (ctx->state & mask) == mask;
	FUNC1(&ctx->fimc_dev->slock, flags);
	return ret;
}