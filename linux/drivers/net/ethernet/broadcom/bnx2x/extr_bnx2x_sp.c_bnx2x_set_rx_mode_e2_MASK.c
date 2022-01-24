#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_3__ {int /*<<< orphan*/  rule_cnt; } ;
struct eth_filter_rules_ramrod_data {TYPE_1__ header; TYPE_2__* rules; } ;
struct bnx2x_rx_mode_ramrod_params {int /*<<< orphan*/  rdata_mapping; int /*<<< orphan*/  cid; int /*<<< orphan*/  tx_accept_flags; int /*<<< orphan*/  rx_accept_flags; int /*<<< orphan*/  func_id; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  rx_mode_flags; void* cl_id; struct eth_filter_rules_ramrod_data* rdata; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {void* cmd_general_data; int /*<<< orphan*/  func_id; void* client_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_FCOE_ETH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 void* ETH_FILTER_RULES_CMD_RX_CMD ; 
 void* ETH_FILTER_RULES_CMD_TX_CMD ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_ETH_FILTER_RULES ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  RAMROD_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cl_id ; 
 int /*<<< orphan*/  FUNC7 (struct eth_filter_rules_ramrod_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp,
				struct bnx2x_rx_mode_ramrod_params *p)
{
	struct eth_filter_rules_ramrod_data *data = p->rdata;
	int rc;
	u8 rule_idx = 0;

	/* Reset the ramrod data buffer */
	FUNC7(data, 0, sizeof(*data));

	/* Setup ramrod data */

	/* Tx (internal switching) */
	if (FUNC8(RAMROD_TX, &p->ramrod_flags)) {
		data->rules[rule_idx].client_id = p->cl_id;
		data->rules[rule_idx].func_id = p->func_id;

		data->rules[rule_idx].cmd_general_data =
			ETH_FILTER_RULES_CMD_TX_CMD;

		FUNC4(bp, &p->tx_accept_flags,
					       &(data->rules[rule_idx++]),
					       false);
	}

	/* Rx */
	if (FUNC8(RAMROD_RX, &p->ramrod_flags)) {
		data->rules[rule_idx].client_id = p->cl_id;
		data->rules[rule_idx].func_id = p->func_id;

		data->rules[rule_idx].cmd_general_data =
			ETH_FILTER_RULES_CMD_RX_CMD;

		FUNC4(bp, &p->rx_accept_flags,
					       &(data->rules[rule_idx++]),
					       false);
	}

	/* If FCoE Queue configuration has been requested configure the Rx and
	 * internal switching modes for this queue in separate rules.
	 *
	 * FCoE queue shell never be set to ACCEPT_ALL packets of any sort:
	 * MCAST_ALL, UCAST_ALL, BCAST_ALL and UNMATCHED.
	 */
	if (FUNC8(BNX2X_RX_MODE_FCOE_ETH, &p->rx_mode_flags)) {
		/*  Tx (internal switching) */
		if (FUNC8(RAMROD_TX, &p->ramrod_flags)) {
			data->rules[rule_idx].client_id = FUNC3(bp, cl_id);
			data->rules[rule_idx].func_id = p->func_id;

			data->rules[rule_idx].cmd_general_data =
						ETH_FILTER_RULES_CMD_TX_CMD;

			FUNC4(bp, &p->tx_accept_flags,
						       &(data->rules[rule_idx]),
						       true);
			rule_idx++;
		}

		/* Rx */
		if (FUNC8(RAMROD_RX, &p->ramrod_flags)) {
			data->rules[rule_idx].client_id = FUNC3(bp, cl_id);
			data->rules[rule_idx].func_id = p->func_id;

			data->rules[rule_idx].cmd_general_data =
						ETH_FILTER_RULES_CMD_RX_CMD;

			FUNC4(bp, &p->rx_accept_flags,
						       &(data->rules[rule_idx]),
						       true);
			rule_idx++;
		}
	}

	/* Set the ramrod header (most importantly - number of rules to
	 * configure).
	 */
	FUNC5(p->cid, &data->header, rule_idx);

	FUNC0(BNX2X_MSG_SP, "About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\n",
			 data->header.rule_cnt, p->rx_accept_flags,
			 p->tx_accept_flags);

	/* No need for an explicit memory barrier here as long as we
	 * ensure the ordering of writing to the SPQ element
	 * and updating of the SPQ producer which involves a memory
	 * read. If the memory read is removed we will have to put a
	 * full memory barrier there (inside bnx2x_sp_post()).
	 */

	/* Send a ramrod */
	rc = FUNC6(bp, RAMROD_CMD_ID_ETH_FILTER_RULES, p->cid,
			   FUNC1(p->rdata_mapping),
			   FUNC2(p->rdata_mapping),
			   ETH_CONNECTION_TYPE);
	if (rc)
		return rc;

	/* Ramrod completion is pending */
	return 1;
}