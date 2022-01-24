#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  tx_cmd; void* switch_time_offset; } ;
struct TYPE_9__ {void* max_offchan_duration; void* switch_timeout; void* switch_time; void* frame_timestamp; } ;
struct iwl_tdls_channel_switch_cmd_tail {TYPE_6__ frame; TYPE_2__ timing; } ;
struct iwl_tdls_channel_switch_cmd {int switch_type; int /*<<< orphan*/  ci; void* peer_sta_id; int /*<<< orphan*/  member_0; } ;
struct iwl_mvm_sta {int sta_id; } ;
struct cfg80211_chan_def {scalar_t__ chan; } ;
struct TYPE_8__ {struct cfg80211_chan_def chandef; } ;
struct TYPE_14__ {scalar_t__ state; int cur_sta_id; TYPE_1__ peer; } ;
struct iwl_mvm {TYPE_7__ tdls_cs; int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_3__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_12__ {TYPE_4__* hw_key; } ;
struct ieee80211_tx_info {TYPE_5__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ieee80211_chanctx_conf {struct cfg80211_chan_def def; } ;
typedef  enum iwl_tdls_channel_switch_type { ____Placeholder_iwl_tdls_channel_switch_type } iwl_tdls_channel_switch_type ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_11__ {scalar_t__ cipher; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 scalar_t__ IWL_MVM_TDLS_SW_ACTIVE ; 
 scalar_t__ IWL_MVM_TDLS_SW_IDLE ; 
 scalar_t__ IWL_MVM_TDLS_SW_REQ_RCVD ; 
 scalar_t__ IWL_MVM_TDLS_SW_REQ_SENT ; 
 scalar_t__ IWL_MVM_TDLS_SW_RESP_RCVD ; 
 int /*<<< orphan*/  IWL_TDLS_CH_SW_FRAME_MAX_SIZE ; 
 int /*<<< orphan*/  TDLS_CHANNEL_SWITCH_CMD ; 
 int TDLS_MOVE_CH ; 
 int TDLS_SEND_CHAN_SW_REQ ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ WLAN_CIPHER_SUITE_CCMP ; 
 void* FUNC5 (int) ; 
 struct ieee80211_sta* FUNC6 (struct ieee80211_vif*,int /*<<< orphan*/  const*) ; 
 struct iwl_tdls_channel_switch_cmd_tail* FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct iwl_mvm*) ; 
 int FUNC9 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tdls_channel_switch_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,int /*<<< orphan*/ *,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct sk_buff*,int /*<<< orphan*/ *,struct ieee80211_tx_info*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_tx_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,int /*<<< orphan*/ *,struct ieee80211_tx_info*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC14 (struct ieee80211_sta*) ; 
 int FUNC15 (struct iwl_mvm*,int,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_mvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static int
FUNC22(struct iwl_mvm *mvm,
				   struct ieee80211_vif *vif,
				   enum iwl_tdls_channel_switch_type type,
				   const u8 *peer, bool peer_initiator,
				   u8 oper_class,
				   struct cfg80211_chan_def *chandef,
				   u32 timestamp, u16 switch_time,
				   u16 switch_timeout, struct sk_buff *skb,
				   u32 ch_sw_tm_ie)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;
	struct ieee80211_tx_info *info;
	struct ieee80211_hdr *hdr;
	struct iwl_tdls_channel_switch_cmd cmd = {0};
	struct iwl_tdls_channel_switch_cmd_tail *tail =
		FUNC7(mvm, &cmd.ci);
	u16 len = sizeof(cmd) - FUNC8(mvm);
	int ret;

	FUNC17(&mvm->mutex);

	ret = FUNC15(mvm, type, peer, peer_initiator,
					timestamp);
	if (ret)
		return ret;

	if (!skb || FUNC3(skb->len > IWL_TDLS_CH_SW_FRAME_MAX_SIZE)) {
		ret = -EINVAL;
		goto out;
	}

	cmd.switch_type = type;
	tail->timing.frame_timestamp = FUNC5(timestamp);
	tail->timing.switch_time = FUNC5(switch_time);
	tail->timing.switch_timeout = FUNC5(switch_timeout);

	FUNC20();
	sta = FUNC6(vif, peer);
	if (!sta) {
		FUNC21();
		ret = -ENOENT;
		goto out;
	}
	mvmsta = FUNC14(sta);
	cmd.peer_sta_id = FUNC5(mvmsta->sta_id);

	if (!chandef) {
		if (mvm->tdls_cs.state == IWL_MVM_TDLS_SW_REQ_SENT &&
		    mvm->tdls_cs.peer.chandef.chan) {
			/* actually moving to the channel */
			chandef = &mvm->tdls_cs.peer.chandef;
		} else if (mvm->tdls_cs.state == IWL_MVM_TDLS_SW_ACTIVE &&
			   type == TDLS_MOVE_CH) {
			/* we need to return to base channel */
			struct ieee80211_chanctx_conf *chanctx =
					FUNC19(vif->chanctx_conf);

			if (FUNC4(!chanctx)) {
				FUNC21();
				goto out;
			}

			chandef = &chanctx->def;
		}
	}

	if (chandef)
		FUNC10(mvm, &cmd.ci, chandef);

	/* keep quota calculation simple for now - 50% of DTIM for TDLS */
	tail->timing.max_offchan_duration =
			FUNC5(FUNC2(vif->bss_conf.dtim_period *
					     vif->bss_conf.beacon_int) / 2);

	/* Switch time is the first element in the switch-timing IE. */
	tail->frame.switch_time_offset = FUNC5(ch_sw_tm_ie + 2);

	info = FUNC0(skb);
	hdr = (void *)skb->data;
	if (info->control.hw_key) {
		if (info->control.hw_key->cipher != WLAN_CIPHER_SUITE_CCMP) {
			FUNC21();
			ret = -EINVAL;
			goto out;
		}
		FUNC12(info, &tail->frame.tx_cmd);
	}

	FUNC11(mvm, skb, &tail->frame.tx_cmd, info,
			   mvmsta->sta_id);

	FUNC13(mvm, &tail->frame.tx_cmd, info, sta,
				hdr->frame_control);
	FUNC21();

	FUNC18(tail->frame.data, skb->data, skb->len);

	ret = FUNC9(mvm, TDLS_CHANNEL_SWITCH_CMD, 0, len, &cmd);
	if (ret) {
		FUNC1(mvm, "Failed to send TDLS_CHANNEL_SWITCH cmd: %d\n",
			ret);
		goto out;
	}

	/* channel switch has started, update state */
	if (type != TDLS_MOVE_CH) {
		mvm->tdls_cs.cur_sta_id = mvmsta->sta_id;
		FUNC16(mvm,
					     type == TDLS_SEND_CHAN_SW_REQ ?
					     IWL_MVM_TDLS_SW_REQ_SENT :
					     IWL_MVM_TDLS_SW_REQ_RCVD);
	} else {
		FUNC16(mvm, IWL_MVM_TDLS_SW_RESP_RCVD);
	}

out:

	/* channel switch failed - we are idle */
	if (ret)
		FUNC16(mvm, IWL_MVM_TDLS_SW_IDLE);

	return ret;
}