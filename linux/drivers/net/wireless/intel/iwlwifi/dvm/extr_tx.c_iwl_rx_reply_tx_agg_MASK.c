#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct agg_tx_status {int /*<<< orphan*/  status; } ;
struct iwlagn_tx_resp {int ra_tid; int frame_count; int /*<<< orphan*/  rate_n_flags; scalar_t__ bt_kill_count; struct agg_tx_status status; } ;
struct iwl_priv {TYPE_3__* lib; TYPE_1__** tid_data; } ;
struct iwl_ht_agg {int wait_for_ba; int txq_id; int /*<<< orphan*/  rate_n_flags; } ;
struct TYPE_6__ {TYPE_2__* bt_params; } ;
struct TYPE_5__ {scalar_t__ advanced_bt_coexist; } ;
struct TYPE_4__ {struct iwl_ht_agg agg; } ;

/* Variables and functions */
 int AGG_TX_STATE_ABORT_MSK ; 
 int AGG_TX_STATE_FEW_BYTES_MSK ; 
 int AGG_TX_STATUS_MSK ; 
 int AGG_TX_TRY_MSK ; 
 int AGG_TX_TRY_POS ; 
 int IWLAGN_TX_RES_RA_MSK ; 
 int IWLAGN_TX_RES_RA_POS ; 
 int IWLAGN_TX_RES_TID_MSK ; 
 int IWLAGN_TX_RES_TID_POS ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
 int IWL_TID_NON_QOS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,int) ; 
 int FUNC5 (struct iwlagn_tx_resp*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct iwl_priv *priv,
				struct iwlagn_tx_resp *tx_resp)
{
	struct agg_tx_status *frame_status = &tx_resp->status;
	int tid = (tx_resp->ra_tid & IWLAGN_TX_RES_TID_MSK) >>
		IWLAGN_TX_RES_TID_POS;
	int sta_id = (tx_resp->ra_tid & IWLAGN_TX_RES_RA_MSK) >>
		IWLAGN_TX_RES_RA_POS;
	struct iwl_ht_agg *agg = &priv->tid_data[sta_id][tid].agg;
	u32 status = FUNC6(tx_resp->status.status);
	int i;

	FUNC2(tid == IWL_TID_NON_QOS);

	if (agg->wait_for_ba)
		FUNC1(priv,
			"got tx response w/o block-ack\n");

	agg->rate_n_flags = FUNC7(tx_resp->rate_n_flags);
	agg->wait_for_ba = (tx_resp->frame_count > 1);

	/*
	 * If the BT kill count is non-zero, we'll get this
	 * notification again.
	 */
	if (tx_resp->bt_kill_count && tx_resp->frame_count == 1 &&
	    priv->lib->bt_params &&
	    priv->lib->bt_params->advanced_bt_coexist) {
		FUNC0(priv, "receive reply tx w/ bt_kill\n");
	}

	if (tx_resp->frame_count == 1)
		return;

	FUNC1(priv, "TXQ %d initial_rate 0x%x ssn %d frm_cnt %d\n",
			   agg->txq_id,
			   FUNC7(tx_resp->rate_n_flags),
			   FUNC5(tx_resp), tx_resp->frame_count);

	/* Construct bit-map of pending frames within Tx window */
	for (i = 0; i < tx_resp->frame_count; i++) {
		u16 fstatus = FUNC6(frame_status[i].status);
		u8 retry_cnt = (fstatus & AGG_TX_TRY_MSK) >> AGG_TX_TRY_POS;

		if (status & AGG_TX_STATUS_MSK)
			FUNC4(priv, fstatus);

		if (status & (AGG_TX_STATE_FEW_BYTES_MSK |
			      AGG_TX_STATE_ABORT_MSK))
			continue;

		if (status & AGG_TX_STATUS_MSK || retry_cnt > 1)
			FUNC1(priv,
					   "%d: status %s (0x%04x), try-count (0x%01x)\n",
					   i,
					   FUNC3(fstatus),
					   fstatus & AGG_TX_STATUS_MSK,
					   retry_cnt);
	}
}