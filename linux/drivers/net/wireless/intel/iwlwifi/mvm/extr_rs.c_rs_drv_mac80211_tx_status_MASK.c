#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 struct iwl_mvm* FUNC1 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ,struct ieee80211_tx_info*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hdr*) ; 

__attribute__((used)) static void FUNC7(void *mvm_r,
				      struct ieee80211_supported_band *sband,
				      struct ieee80211_sta *sta, void *priv_sta,
				      struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct iwl_op_mode *op_mode = mvm_r;
	struct iwl_mvm *mvm = FUNC1(op_mode);
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct iwl_mvm_sta *mvmsta = FUNC5(sta);

	if (!mvmsta->vif)
		return;

	if (!FUNC2(hdr->frame_control) ||
	    info->flags & IEEE80211_TX_CTL_NO_ACK)
		return;

	FUNC4(mvm, sta, FUNC6(hdr), info,
			     FUNC3(hdr->frame_control));
}