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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct iwl_time_quota_data {void* id_and_color; void* max_duration; void* quota; } ;
struct iwl_time_quota_cmd {int dummy; } ;
struct iwl_mvm_vif {int uploaded; size_t ap_sta_id; TYPE_2__* phy_ctxt; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct iwl_binding_cmd_v1 {void** macs; void* phy; void* action; void* id_and_color; } ;
struct TYPE_3__ {int /*<<< orphan*/  assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sta {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  rx_chains_dynamic; int /*<<< orphan*/  rx_chains_static; struct cfg80211_chan_def def; } ;
struct TYPE_4__ {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDING_CONTEXT_CMD ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  FW_CTXT_INVALID ; 
 int /*<<< orphan*/  IWL_BINDING_CMD_SIZE_V1 ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  IWL_MVM_MAX_QUOTA ; 
 int MAX_BINDINGS ; 
 int MAX_MACS_IN_BINDING ; 
 int /*<<< orphan*/  TIME_QUOTA_CMD ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC9 (struct iwl_mvm*,struct ieee80211_vif*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct iwl_mvm*,TYPE_2__*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_time_quota_data* FUNC11 (struct iwl_mvm*,struct iwl_time_quota_cmd*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*) ; 
 int FUNC13 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_time_quota_cmd*) ; 
 int FUNC14 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_binding_cmd_v1*,int*) ; 
 int FUNC15 (struct iwl_mvm*,struct ieee80211_sta*,int,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC16 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 struct ieee80211_chanctx_conf* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static int FUNC21(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
				struct ieee80211_sta *ap_sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC16(vif);
	struct ieee80211_chanctx_conf *ctx;
	u8 chains_static, chains_dynamic;
	struct cfg80211_chan_def chandef;
	int ret, i;
	struct iwl_binding_cmd_v1 binding_cmd = {};
	struct iwl_time_quota_cmd quota_cmd = {};
	struct iwl_time_quota_data *quota;
	u32 status;

	if (FUNC3(FUNC6(mvm)))
		return -EINVAL;

	/* add back the PHY */
	if (FUNC2(!mvmvif->phy_ctxt))
		return -EINVAL;

	FUNC19();
	ctx = FUNC18(vif->chanctx_conf);
	if (FUNC2(!ctx)) {
		FUNC20();
		return -EINVAL;
	}
	chandef = ctx->def;
	chains_static = ctx->rx_chains_static;
	chains_dynamic = ctx->rx_chains_dynamic;
	FUNC20();

	ret = FUNC10(mvm, mvmvif->phy_ctxt, &chandef,
				   chains_static, chains_dynamic);
	if (ret)
		return ret;

	/* add back the MAC */
	mvmvif->uploaded = false;

	if (FUNC2(!vif->bss_conf.assoc))
		return -EINVAL;

	ret = FUNC8(mvm, vif);
	if (ret)
		return ret;

	/* add back binding - XXX refactor? */
	binding_cmd.id_and_color =
		FUNC4(FUNC0(mvmvif->phy_ctxt->id,
						mvmvif->phy_ctxt->color));
	binding_cmd.action = FUNC4(FW_CTXT_ACTION_ADD);
	binding_cmd.phy =
		FUNC4(FUNC0(mvmvif->phy_ctxt->id,
						mvmvif->phy_ctxt->color));
	binding_cmd.macs[0] = FUNC4(FUNC0(mvmvif->id,
							      mvmvif->color));
	for (i = 1; i < MAX_MACS_IN_BINDING; i++)
		binding_cmd.macs[i] = FUNC4(FW_CTXT_INVALID);

	status = 0;
	ret = FUNC14(mvm, BINDING_CONTEXT_CMD,
					  IWL_BINDING_CMD_SIZE_V1, &binding_cmd,
					  &status);
	if (ret) {
		FUNC1(mvm, "Failed to add binding: %d\n", ret);
		return ret;
	}

	if (status) {
		FUNC1(mvm, "Binding command failed: %u\n", status);
		return -EIO;
	}

	ret = FUNC15(mvm, ap_sta, false, 0);
	if (ret)
		return ret;
	FUNC17(mvm->fw_id_to_mac_id[mvmvif->ap_sta_id], ap_sta);

	ret = FUNC9(mvm, vif, false, NULL);
	if (ret)
		return ret;

	/* and some quota */
	quota = FUNC11(mvm, &quota_cmd, 0);
	quota->id_and_color =
		FUNC4(FUNC0(mvmvif->phy_ctxt->id,
						mvmvif->phy_ctxt->color));
	quota->quota = FUNC4(IWL_MVM_MAX_QUOTA);
	quota->max_duration = FUNC4(IWL_MVM_MAX_QUOTA);

	for (i = 1; i < MAX_BINDINGS; i++) {
		quota = FUNC11(mvm, &quota_cmd, i);
		quota->id_and_color = FUNC4(FW_CTXT_INVALID);
	}

	ret = FUNC13(mvm, TIME_QUOTA_CMD, 0,
				   FUNC12(mvm), &quota_cmd);
	if (ret)
		FUNC1(mvm, "Failed to send quota: %d\n", ret);

	if (FUNC7(mvm) && FUNC5(mvm))
		FUNC1(mvm, "Failed to initialize D3 LAR information\n");

	return 0;
}