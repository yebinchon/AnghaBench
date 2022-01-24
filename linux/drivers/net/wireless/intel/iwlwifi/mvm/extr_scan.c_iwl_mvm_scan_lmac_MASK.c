#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct iwl_scan_req_lmac {TYPE_4__* channel_opt; TYPE_3__* schedule; int /*<<< orphan*/  direct_scan; int /*<<< orphan*/  tx_cmd; void* filter_flags; int /*<<< orphan*/  flags; void* scan_flags; void* delay; scalar_t__ n_channels; void* iter_num; int /*<<< orphan*/  rx_chain_select; scalar_t__ data; } ;
struct iwl_scan_probe_req_v1 {int dummy; } ;
struct iwl_scan_channel_cfg_lmac {int dummy; } ;
struct iwl_mvm_scan_params {int n_scan_plans; int delay; int /*<<< orphan*/  preq; scalar_t__ n_channels; TYPE_5__** channels; struct cfg80211_sched_scan_plan* scan_plans; int /*<<< orphan*/  no_cck; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_2__* fw; struct iwl_scan_req_lmac* scan_cmd; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_sched_scan_plan {int interval; int iterations; } ;
struct TYPE_10__ {int /*<<< orphan*/  band; } ;
struct TYPE_9__ {void* non_ebs_ratio; void* flags; } ;
struct TYPE_8__ {int iterations; int full_scan_mul; void* delay; } ;
struct TYPE_6__ {int n_scan_channels; } ;
struct TYPE_7__ {TYPE_1__ ucode_capa; } ;

/* Variables and functions */
 int EINVAL ; 
 int IWL_DENSE_EBS_SCAN_RATIO ; 
 int IWL_MAX_SCHED_SCAN_PLANS ; 
 int IWL_SCAN_CHANNEL_FLAG_CACHE_ADD ; 
 int IWL_SCAN_CHANNEL_FLAG_EBS ; 
 int IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE ; 
 int IWL_SPARSE_EBS_SCAN_RATIO ; 
 int MAC_FILTER_ACCEPT_GRP ; 
 int MAC_FILTER_IN_BEACON ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,TYPE_5__**,scalar_t__,int,struct iwl_scan_req_lmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_scan_req_lmac*,struct iwl_mvm_scan_params*) ; 
 int FUNC6 (struct iwl_mvm*,struct iwl_mvm_scan_params*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_scan_probe_req_v1*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm_scan_params*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_scan_req_lmac*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_scan_req_lmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			     struct iwl_mvm_scan_params *params)
{
	struct iwl_scan_req_lmac *cmd = mvm->scan_cmd;
	struct iwl_scan_probe_req_v1 *preq =
		(void *)(cmd->data + sizeof(struct iwl_scan_channel_cfg_lmac) *
			 mvm->fw->ucode_capa.n_scan_channels);
	u32 ssid_bitmap = 0;
	int i;

	FUNC13(&mvm->mutex);

	FUNC14(cmd, 0, FUNC12(cmd));

	if (FUNC0(params->n_scan_plans > IWL_MAX_SCHED_SCAN_PLANS))
		return -EINVAL;

	FUNC5(mvm, cmd, params);

	cmd->rx_chain_select = FUNC7(mvm);
	cmd->iter_num = FUNC2(1);
	cmd->n_channels = (u8)params->n_channels;

	cmd->delay = FUNC2(params->delay);

	cmd->scan_flags = FUNC2(FUNC6(mvm, params,
							      vif));

	cmd->flags = FUNC8(params->channels[0]->band);
	cmd->filter_flags = FUNC2(MAC_FILTER_ACCEPT_GRP |
					MAC_FILTER_IN_BEACON);
	FUNC4(mvm, cmd->tx_cmd, params->no_cck);
	FUNC11(params, cmd->direct_scan, &ssid_bitmap);

	/* this API uses bits 1-20 instead of 0-19 */
	ssid_bitmap <<= 1;

	for (i = 0; i < params->n_scan_plans; i++) {
		struct cfg80211_sched_scan_plan *scan_plan =
			&params->scan_plans[i];

		cmd->schedule[i].delay =
			FUNC1(scan_plan->interval);
		cmd->schedule[i].iterations = scan_plan->iterations;
		cmd->schedule[i].full_scan_mul = 1;
	}

	/*
	 * If the number of iterations of the last scan plan is set to
	 * zero, it should run infinitely. However, this is not always the case.
	 * For example, when regular scan is requested the driver sets one scan
	 * plan with one iteration.
	 */
	if (!cmd->schedule[i - 1].iterations)
		cmd->schedule[i - 1].iterations = 0xff;

	if (FUNC10(mvm, vif)) {
		cmd->channel_opt[0].flags =
			FUNC1(IWL_SCAN_CHANNEL_FLAG_EBS |
				    IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE |
				    IWL_SCAN_CHANNEL_FLAG_CACHE_ADD);
		cmd->channel_opt[0].non_ebs_ratio =
			FUNC1(IWL_DENSE_EBS_SCAN_RATIO);
		cmd->channel_opt[1].flags =
			FUNC1(IWL_SCAN_CHANNEL_FLAG_EBS |
				    IWL_SCAN_CHANNEL_FLAG_EBS_ACCURATE |
				    IWL_SCAN_CHANNEL_FLAG_CACHE_ADD);
		cmd->channel_opt[1].non_ebs_ratio =
			FUNC1(IWL_SPARSE_EBS_SCAN_RATIO);
	}

	FUNC3(mvm, params->channels,
				       params->n_channels, ssid_bitmap, cmd);

	FUNC9(preq, &params->preq);

	return 0;
}