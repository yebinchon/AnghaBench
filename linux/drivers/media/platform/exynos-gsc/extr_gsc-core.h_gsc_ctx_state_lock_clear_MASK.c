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
typedef  int /*<<< orphan*/  u32 ;
struct gsc_ctx {TYPE_1__* gsc_dev; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(u32 state, struct gsc_ctx *ctx)
{
	unsigned long flags;

	FUNC0(&ctx->gsc_dev->slock, flags);
	ctx->state &= ~state;
	FUNC1(&ctx->gsc_dev->slock, flags);
}