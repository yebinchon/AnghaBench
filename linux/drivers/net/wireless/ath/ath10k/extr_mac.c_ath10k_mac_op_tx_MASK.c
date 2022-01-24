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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_txq {int dummy; } ;
struct TYPE_2__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_control {struct ieee80211_sta* sta; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath10k_htt {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {struct ath10k_htt htt; int /*<<< orphan*/  hw; } ;
typedef  enum ath10k_mac_tx_path { ____Placeholder_ath10k_mac_tx_path } ath10k_mac_tx_path ;
typedef  enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int ATH10K_MAC_TX_HTT ; 
 int ATH10K_MAC_TX_HTT_MGMT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_htt*) ; 
 int FUNC3 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_htt*) ; 
 int FUNC5 (struct ath10k_htt*,int,int) ; 
 int FUNC6 (struct ath10k*,struct ieee80211_vif*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_txq*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct sk_buff*) ; 
 int FUNC9 (struct ath10k*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,struct ieee80211_txq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct ieee80211_hw *hw,
			     struct ieee80211_tx_control *control,
			     struct sk_buff *skb)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_htt *htt = &ar->htt;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_vif *vif = info->control.vif;
	struct ieee80211_sta *sta = control->sta;
	struct ieee80211_txq *txq = NULL;
	struct ieee80211_hdr *hdr = (void *)skb->data;
	enum ath10k_hw_txrx_mode txmode;
	enum ath10k_mac_tx_path txpath;
	bool is_htt;
	bool is_mgmt;
	bool is_presp;
	int ret;
	u16 airtime;

	airtime = FUNC10(ar, txq, skb);
	FUNC7(ar, vif, txq, skb, airtime);

	txmode = FUNC8(ar, vif, sta, skb);
	txpath = FUNC9(ar, skb, txmode);
	is_htt = (txpath == ATH10K_MAC_TX_HTT ||
		  txpath == ATH10K_MAC_TX_HTT_MGMT);
	is_mgmt = (txpath == ATH10K_MAC_TX_HTT_MGMT);

	if (is_htt) {
		FUNC14(&ar->htt.tx_lock);
		is_presp = FUNC13(hdr->frame_control);

		ret = FUNC3(htt);
		if (ret) {
			FUNC11(ar, "failed to increase tx pending count: %d, dropping\n",
				    ret);
			FUNC15(&ar->htt.tx_lock);
			FUNC12(ar->hw, skb);
			return;
		}

		ret = FUNC5(htt, is_mgmt, is_presp);
		if (ret) {
			FUNC1(ar, ATH10K_DBG_MAC, "failed to increase tx mgmt pending count: %d, dropping\n",
				   ret);
			FUNC2(htt);
			FUNC15(&ar->htt.tx_lock);
			FUNC12(ar->hw, skb);
			return;
		}
		FUNC15(&ar->htt.tx_lock);
	}

	ret = FUNC6(ar, vif, txmode, txpath, skb);
	if (ret) {
		FUNC11(ar, "failed to transmit frame: %d\n", ret);
		if (is_htt) {
			FUNC14(&ar->htt.tx_lock);
			FUNC2(htt);
			if (is_mgmt)
				FUNC4(htt);
			FUNC15(&ar->htt.tx_lock);
		}
		return;
	}
}