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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_txq {struct ieee80211_sta* sta; struct ieee80211_vif* vif; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath10k_txq {int /*<<< orphan*/  num_fw_queued; } ;
struct ath10k_htt {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {struct ath10k_htt htt; } ;
typedef  enum ath10k_mac_tx_path { ____Placeholder_ath10k_mac_tx_path } ath10k_mac_tx_path ;
typedef  enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;

/* Variables and functions */
 int ATH10K_MAC_TX_HTT_MGMT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k_htt*) ; 
 int FUNC1 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_htt*) ; 
 int FUNC3 (struct ath10k_htt*,int,int) ; 
 int FUNC4 (struct ath10k*,struct ieee80211_vif*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_txq*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct sk_buff*) ; 
 int FUNC7 (struct ath10k*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,struct ieee80211_txq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC11 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct ieee80211_hw *hw,
			   struct ieee80211_txq *txq)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_htt *htt = &ar->htt;
	struct ath10k_txq *artxq = (void *)txq->drv_priv;
	struct ieee80211_vif *vif = txq->vif;
	struct ieee80211_sta *sta = txq->sta;
	enum ath10k_hw_txrx_mode txmode;
	enum ath10k_mac_tx_path txpath;
	struct sk_buff *skb;
	struct ieee80211_hdr *hdr;
	size_t skb_len;
	bool is_mgmt, is_presp;
	int ret;
	u16 airtime;

	FUNC12(&ar->htt.tx_lock);
	ret = FUNC1(htt);
	FUNC13(&ar->htt.tx_lock);

	if (ret)
		return ret;

	skb = FUNC11(hw, txq);
	if (!skb) {
		FUNC12(&ar->htt.tx_lock);
		FUNC0(htt);
		FUNC13(&ar->htt.tx_lock);

		return -ENOENT;
	}

	airtime = FUNC8(ar, txq, skb);
	FUNC5(ar, vif, txq, skb, airtime);

	skb_len = skb->len;
	txmode = FUNC6(ar, vif, sta, skb);
	txpath = FUNC7(ar, skb, txmode);
	is_mgmt = (txpath == ATH10K_MAC_TX_HTT_MGMT);

	if (is_mgmt) {
		hdr = (struct ieee80211_hdr *)skb->data;
		is_presp = FUNC10(hdr->frame_control);

		FUNC12(&ar->htt.tx_lock);
		ret = FUNC3(htt, is_mgmt, is_presp);

		if (ret) {
			FUNC0(htt);
			FUNC13(&ar->htt.tx_lock);
			return ret;
		}
		FUNC13(&ar->htt.tx_lock);
	}

	ret = FUNC4(ar, vif, txmode, txpath, skb);
	if (FUNC14(ret)) {
		FUNC9(ar, "failed to push frame: %d\n", ret);

		FUNC12(&ar->htt.tx_lock);
		FUNC0(htt);
		if (is_mgmt)
			FUNC2(htt);
		FUNC13(&ar->htt.tx_lock);

		return ret;
	}

	FUNC12(&ar->htt.tx_lock);
	artxq->num_fw_queued++;
	FUNC13(&ar->htt.tx_lock);

	return skb_len;
}