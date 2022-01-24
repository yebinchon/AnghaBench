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
struct rs_rate {int /*<<< orphan*/  ant; } ;
struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm_sta {TYPE_3__* vif; int /*<<< orphan*/  max_agg_bufsize; } ;
struct iwl_mvm {TYPE_2__* fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dbg_fixed_rate; } ;
struct iwl_lq_cmd {void* agg_time_limit; int /*<<< orphan*/  flags; int /*<<< orphan*/  agg_frame_cnt_limit; int /*<<< orphan*/  single_stream_ant_msk; int /*<<< orphan*/  agg_disable_start_th; } ;
struct iwl_lq_sta {TYPE_1__ pers; int /*<<< orphan*/  band; struct iwl_lq_cmd lq; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {scalar_t__ p2p; } ;
struct TYPE_5__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_RS_AGG_DISABLE_START ; 
 int /*<<< orphan*/  IWL_MVM_RS_AGG_TIME_LIMIT ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_LQ_SS_PARAMS ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2 ; 
 int /*<<< orphan*/  LQ_FLAG_USE_RTS_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_sta*) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (struct iwl_mvm_vif*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,struct rs_rate const*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct iwl_lq_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,struct rs_rate const*) ; 

__attribute__((used)) static void FUNC12(struct iwl_mvm *mvm,
			   struct ieee80211_sta *sta,
			   struct iwl_lq_sta *lq_sta,
			   const struct rs_rate *initial_rate)
{
	struct iwl_lq_cmd *lq_cmd = &lq_sta->lq;
	struct iwl_mvm_sta *mvmsta;
	struct iwl_mvm_vif *mvmvif;

	lq_cmd->agg_disable_start_th = IWL_MVM_RS_AGG_DISABLE_START;
	lq_cmd->agg_time_limit =
		FUNC1(IWL_MVM_RS_AGG_TIME_LIMIT);

#ifdef CONFIG_MAC80211_DEBUGFS
	if (lq_sta->pers.dbg_fixed_rate) {
		rs_build_rates_table_from_fixed(mvm, lq_cmd,
						lq_sta->band,
						lq_sta->pers.dbg_fixed_rate);
		return;
	}
#endif
	if (FUNC0(!sta || !initial_rate))
		return;

	FUNC9(mvm, sta, lq_sta, initial_rate);

	if (FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_LQ_SS_PARAMS))
		FUNC11(mvm, sta, lq_sta, initial_rate);

	mvmsta = FUNC5(sta);
	mvmvif = FUNC6(mvmsta->vif);

	if (!FUNC3(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2) &&
	    FUNC8(initial_rate->ant) == 1)
		lq_cmd->single_stream_ant_msk = initial_rate->ant;

	lq_cmd->agg_frame_cnt_limit = mvmsta->max_agg_bufsize;

	/*
	 * In case of low latency, tell the firmware to leave a frame in the
	 * Tx Fifo so that it can start a transaction in the same TxOP. This
	 * basically allows the firmware to send bursts.
	 */
	if (FUNC7(mvmvif))
		lq_cmd->agg_frame_cnt_limit--;

	if (mvmsta->vif->p2p)
		lq_cmd->flags |= LQ_FLAG_USE_RTS_MSK;

	lq_cmd->agg_time_limit =
			FUNC1(FUNC4(mvm, sta));
}