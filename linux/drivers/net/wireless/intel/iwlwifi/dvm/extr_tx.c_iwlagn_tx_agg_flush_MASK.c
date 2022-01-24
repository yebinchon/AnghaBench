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
typedef  size_t u16 ;
struct TYPE_2__ {int txq_id; int state; } ;
struct iwl_tid_data {TYPE_1__ agg; } ;
struct iwl_priv {int /*<<< orphan*/  trans; int /*<<< orphan*/  agg_q_alloc; int /*<<< orphan*/  sta_lock; struct iwl_tid_data** tid_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum iwl_agg_state { ____Placeholder_iwl_agg_state } iwl_agg_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IWL_AGG_OFF ; 
 int IWL_AGG_ON ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 int FUNC3 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*,int) ; 
 scalar_t__ FUNC6 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10(struct iwl_priv *priv, struct ieee80211_vif *vif,
			struct ieee80211_sta *sta, u16 tid)
{
	struct iwl_tid_data *tid_data;
	enum iwl_agg_state agg_state;
	int sta_id, txq_id;
	sta_id = FUNC3(sta);

	/*
	 * First set the agg state to OFF to avoid calling
	 * ieee80211_stop_tx_ba_cb in iwlagn_check_ratid_empty.
	 */
	FUNC7(&priv->sta_lock);

	tid_data = &priv->tid_data[sta_id][tid];
	txq_id = tid_data->agg.txq_id;
	agg_state = tid_data->agg.state;
	FUNC1(priv, "Flush AGG: sta %d tid %d q %d state %d\n",
			    sta_id, tid, txq_id, tid_data->agg.state);

	tid_data->agg.state = IWL_AGG_OFF;

	FUNC8(&priv->sta_lock);

	if (FUNC6(priv, FUNC0(txq_id)))
		FUNC2(priv, "Couldn't flush the AGG queue\n");

	if (FUNC9(txq_id, priv->agg_q_alloc)) {
		/*
		 * If the transport didn't know that we wanted to start
		 * agreggation, don't tell it that we want to stop them.
		 * This can happen when we don't get the addBA response on
		 * time, or we hadn't time to drain the AC queues.
		 */
		if (agg_state == IWL_AGG_ON)
			FUNC4(priv->trans, txq_id, true);
		else
			FUNC1(priv, "Don't disable tx agg: %d\n",
					    agg_state);
		FUNC5(priv, txq_id);
	}

	return 0;
}