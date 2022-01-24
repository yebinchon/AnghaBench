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
struct sk_buff {scalar_t__ data; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {TYPE_2__* vif; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_tx_control {struct ieee80211_sta* sta; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC3 (struct ieee80211_hw*) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_ROC_AUX_RUNNING ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_ROC_RUNNING ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct iwl_mvm*) ; 
 scalar_t__ FUNC9 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_sta*) ; 
 scalar_t__ FUNC10 (struct iwl_mvm*,struct sk_buff*) ; 
 struct iwl_mvm_vif* FUNC11 (TYPE_2__*) ; 
 struct ieee80211_sta* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *hw,
			   struct ieee80211_tx_control *control,
			   struct sk_buff *skb)
{
	struct iwl_mvm *mvm = FUNC3(hw);
	struct ieee80211_sta *sta = control->sta;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (void *)skb->data;
	bool offchannel = FUNC0(skb)->flags &
		IEEE80211_TX_CTL_TX_OFFCHAN;

	if (FUNC8(mvm)) {
		FUNC2(mvm, "Dropping - RF/CT KILL\n");
		goto drop;
	}

	if (offchannel &&
	    !FUNC13(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status) &&
	    !FUNC13(IWL_MVM_STATUS_ROC_AUX_RUNNING, &mvm->status))
		goto drop;

	/* treat non-bufferable MMPDUs on AP interfaces as broadcast */
	if ((info->control.vif->type == NL80211_IFTYPE_AP ||
	     info->control.vif->type == NL80211_IFTYPE_ADHOC) &&
	    FUNC7(hdr->frame_control) &&
	    !FUNC6(hdr->frame_control))
		sta = NULL;

	/* If there is no sta, and it's not offchannel - send through AP */
	if (!sta && info->control.vif->type == NL80211_IFTYPE_STATION &&
	    !offchannel) {
		struct iwl_mvm_vif *mvmvif =
			FUNC11(info->control.vif);
		u8 ap_sta_id = FUNC4(mvmvif->ap_sta_id);

		if (ap_sta_id < IWL_MVM_STATION_COUNT) {
			/* mac80211 holds rcu read lock */
			sta = FUNC12(mvm->fw_id_to_mac_id[ap_sta_id]);
			if (FUNC1(sta))
				goto drop;
		}
	}

	if (sta) {
		if (FUNC9(mvm, skb, sta))
			goto drop;
		return;
	}

	if (FUNC10(mvm, skb))
		goto drop;
	return;
 drop:
	FUNC5(hw, skb);
}