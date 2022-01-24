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
struct TYPE_2__ {int txq_id; int state; int ssn; } ;
struct iwl_tid_data {int next_reclaimed; TYPE_1__ agg; int /*<<< orphan*/  seq_number; } ;
struct iwl_priv {int /*<<< orphan*/  trans; int /*<<< orphan*/  agg_q_alloc; int /*<<< orphan*/  sta_lock; struct iwl_tid_data** tid_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
typedef  enum iwl_agg_state { ____Placeholder_iwl_agg_state } iwl_agg_state ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IWL_AGG_OFF ; 
#define  IWL_AGG_ON 130 
#define  IWL_AGG_STARTING 129 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,int,...) ; 
#define  IWL_EMPTYING_HW_QUEUE_ADDBA 128 
 int IWL_EMPTYING_HW_QUEUE_DELBA ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,char*,size_t) ; 
 int IWL_INVALID_STATION ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,char*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 

int FUNC12(struct iwl_priv *priv, struct ieee80211_vif *vif,
			struct ieee80211_sta *sta, u16 tid)
{
	struct iwl_tid_data *tid_data;
	int sta_id, txq_id;
	enum iwl_agg_state agg_state;

	sta_id = FUNC6(sta);

	if (sta_id == IWL_INVALID_STATION) {
		FUNC3(priv, "Invalid station for AGG tid %d\n", tid);
		return -ENXIO;
	}

	FUNC9(&priv->sta_lock);

	tid_data = &priv->tid_data[sta_id][tid];
	txq_id = tid_data->agg.txq_id;

	switch (tid_data->agg.state) {
	case IWL_EMPTYING_HW_QUEUE_ADDBA:
		/*
		* This can happen if the peer stops aggregation
		* again before we've had a chance to drain the
		* queue we selected previously, i.e. before the
		* session was really started completely.
		*/
		FUNC1(priv, "AGG stop before setup done\n");
		goto turn_off;
	case IWL_AGG_STARTING:
		/*
		 * This can happen when the session is stopped before
		 * we receive ADDBA response
		 */
		FUNC1(priv, "AGG stop before AGG became operational\n");
		goto turn_off;
	case IWL_AGG_ON:
		break;
	default:
		FUNC4(priv,
			 "Stopping AGG while state not ON or starting for %d on %d (%d)\n",
			 sta_id, tid, tid_data->agg.state);
		FUNC10(&priv->sta_lock);
		return 0;
	}

	tid_data->agg.ssn = FUNC0(tid_data->seq_number);

	/* There are still packets for this RA / TID in the HW */
	if (!FUNC11(txq_id, priv->agg_q_alloc)) {
		FUNC2(priv,
			"stopping AGG on STA/TID %d/%d but hwq %d not used\n",
			sta_id, tid, txq_id);
	} else if (tid_data->agg.ssn != tid_data->next_reclaimed) {
		FUNC2(priv,
				    "Can't proceed: ssn %d, next_recl = %d\n",
				    tid_data->agg.ssn,
				    tid_data->next_reclaimed);
		tid_data->agg.state = IWL_EMPTYING_HW_QUEUE_DELBA;
		FUNC10(&priv->sta_lock);
		return 0;
	}

	FUNC2(priv, "Can proceed: ssn = next_recl = %d\n",
			    tid_data->agg.ssn);
turn_off:
	agg_state = tid_data->agg.state;
	tid_data->agg.state = IWL_AGG_OFF;

	FUNC10(&priv->sta_lock);

	if (FUNC11(txq_id, priv->agg_q_alloc)) {
		/*
		 * If the transport didn't know that we wanted to start
		 * agreggation, don't tell it that we want to stop them.
		 * This can happen when we don't get the addBA response on
		 * time, or we hadn't time to drain the AC queues.
		 */
		if (agg_state == IWL_AGG_ON)
			FUNC7(priv->trans, txq_id, true);
		else
			FUNC2(priv, "Don't disable tx agg: %d\n",
					    agg_state);
		FUNC8(priv, txq_id);
	}

	FUNC5(vif, sta->addr, tid);

	return 0;
}