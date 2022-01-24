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
struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {scalar_t__ is_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  RG_TRX_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,int /*<<< orphan*/ ,struct at86rf230_state_change*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at86rf230_rx_trac_check ; 
 int /*<<< orphan*/  at86rf230_tx_trac_check ; 

__attribute__((used)) static void
FUNC1(void *context)
{
	struct at86rf230_state_change *ctx = context;
	struct at86rf230_local *lp = ctx->lp;

	if (lp->is_tx) {
		lp->is_tx = 0;
		FUNC0(lp, RG_TRX_STATE, ctx,
					 at86rf230_tx_trac_check);
	} else {
		FUNC0(lp, RG_TRX_STATE, ctx,
					 at86rf230_rx_trac_check);
	}
}