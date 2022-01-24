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
typedef  int u8 ;
struct at86rf230_state_change {int /*<<< orphan*/ * buf; struct at86rf230_local* lp; } ;
struct TYPE_2__ {int /*<<< orphan*/  invalid; int /*<<< orphan*/  no_ack; int /*<<< orphan*/  channel_access_failure; int /*<<< orphan*/  success_data_pending; int /*<<< orphan*/  success; } ;
struct at86rf230_local {TYPE_1__ trac; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IEEE802154_AT86RF230_DEBUGFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_TX_ON ; 
#define  TRAC_CHANNEL_ACCESS_FAILURE 132 
#define  TRAC_INVALID 131 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  TRAC_NO_ACK 130 
#define  TRAC_SUCCESS 129 
#define  TRAC_SUCCESS_DATA_PENDING 128 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct at86rf230_local*,struct at86rf230_state_change*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at86rf230_tx_on ; 

__attribute__((used)) static void
FUNC4(void *context)
{
	struct at86rf230_state_change *ctx = context;
	struct at86rf230_local *lp = ctx->lp;

	if (FUNC0(CONFIG_IEEE802154_AT86RF230_DEBUGFS)) {
		u8 trac = FUNC1(ctx->buf[1]);

		switch (trac) {
		case TRAC_SUCCESS:
			lp->trac.success++;
			break;
		case TRAC_SUCCESS_DATA_PENDING:
			lp->trac.success_data_pending++;
			break;
		case TRAC_CHANNEL_ACCESS_FAILURE:
			lp->trac.channel_access_failure++;
			break;
		case TRAC_NO_ACK:
			lp->trac.no_ack++;
			break;
		case TRAC_INVALID:
			lp->trac.invalid++;
			break;
		default:
			FUNC2(1, "received tx trac status %d\n", trac);
			break;
		}
	}

	FUNC3(lp, ctx, STATE_TX_ON, at86rf230_tx_on);
}