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
typedef  scalar_t__ u8 ;
struct at86rf230_state_change {scalar_t__ const to_state; scalar_t__ from_state; int /*<<< orphan*/  (* complete ) (void*) ;scalar_t__* buf; struct at86rf230_local* lp; } ;
struct at86rf230_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RG_TRX_STATE ; 
 int /*<<< orphan*/  RG_TRX_STATUS ; 
 scalar_t__ const STATE_TRANSITION_IN_PROGRESS ; 
 scalar_t__ TRX_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,int /*<<< orphan*/ ,struct at86rf230_state_change*,void (*) (void*)) ; 
 int /*<<< orphan*/  at86rf230_async_state_delay ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*,int /*<<< orphan*/ ,scalar_t__ const,struct at86rf230_state_change*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void *context)
{
	struct at86rf230_state_change *ctx = context;
	struct at86rf230_local *lp = ctx->lp;
	u8 *buf = ctx->buf;
	const u8 trx_state = buf[1] & TRX_STATE_MASK;

	/* Check for "possible" STATE_TRANSITION_IN_PROGRESS */
	if (trx_state == STATE_TRANSITION_IN_PROGRESS) {
		FUNC3(1);
		FUNC0(lp, RG_TRX_STATUS, ctx,
					 at86rf230_async_state_change_start);
		return;
	}

	/* Check if we already are in the state which we change in */
	if (trx_state == ctx->to_state) {
		if (ctx->complete)
			ctx->complete(context);
		return;
	}

	/* Set current state to the context of state change */
	ctx->from_state = trx_state;

	/* Going into the next step for a state change which do a timing
	 * relevant delay.
	 */
	FUNC1(lp, RG_TRX_STATE, ctx->to_state, ctx,
				  at86rf230_async_state_delay);
}