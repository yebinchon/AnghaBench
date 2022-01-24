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
struct TYPE_2__ {int len; } ;
struct at86rf230_state_change {TYPE_1__ trx; struct at86rf230_local* lp; } ;
struct at86rf230_local {int /*<<< orphan*/  slp_tr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RG_TRX_STATE ; 
 int /*<<< orphan*/  STATE_BUSY_TX ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at86rf230_state_change*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *context)
{
	struct at86rf230_state_change *ctx = context;
	struct at86rf230_local *lp = ctx->lp;

	ctx->trx.len = 2;

	if (FUNC2(lp->slp_tr))
		FUNC1(lp);
	else
		FUNC0(lp, RG_TRX_STATE, STATE_BUSY_TX, ctx,
					  NULL);
}