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
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;
struct ath10k_skb_cb {int flags; } ;
struct ath10k {int /*<<< orphan*/  offchan_tx_work; int /*<<< orphan*/  offchan_tx_queue; int /*<<< orphan*/  dev_flags; struct ieee80211_hw* hw; } ;
typedef  enum ath10k_mac_tx_path { ____Placeholder_ath10k_mac_tx_path } ath10k_mac_tx_path ;
typedef  enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  ATH10K_FLAG_RAW_MODE ; 
#define  ATH10K_HW_TXRX_ETHERNET 131 
#define  ATH10K_HW_TXRX_MGMT 130 
#define  ATH10K_HW_TXRX_NATIVE_WIFI 129 
#define  ATH10K_HW_TXRX_RAW 128 
 struct ath10k_skb_cb* FUNC0 (struct sk_buff*) ; 
 int ATH10K_SKB_F_RAW_TX ; 
 int ENOTSUPP ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_CCK_RATE ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct ieee80211_vif*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_vif*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ath10k *ar,
			 struct ieee80211_vif *vif,
			 enum ath10k_hw_txrx_mode txmode,
			 enum ath10k_mac_tx_path txpath,
			 struct sk_buff *skb)
{
	struct ieee80211_hw *hw = ar->hw;
	struct ieee80211_tx_info *info = FUNC1(skb);
	const struct ath10k_skb_cb *skb_cb = FUNC0(skb);
	int ret;

	/* We should disable CCK RATE due to P2P */
	if (info->flags & IEEE80211_TX_CTL_NO_CCK_RATE)
		FUNC3(ar, ATH10K_DBG_MAC, "IEEE80211_TX_CTL_NO_CCK_RATE\n");

	switch (txmode) {
	case ATH10K_HW_TXRX_MGMT:
	case ATH10K_HW_TXRX_NATIVE_WIFI:
		FUNC8(hw, skb);
		FUNC7(ar, vif, skb);
		FUNC9(vif, skb);
		break;
	case ATH10K_HW_TXRX_ETHERNET:
		FUNC6(skb);
		break;
	case ATH10K_HW_TXRX_RAW:
		if (!FUNC14(ATH10K_FLAG_RAW_MODE, &ar->dev_flags) &&
		    !(skb_cb->flags & ATH10K_SKB_F_RAW_TX)) {
			FUNC2(1);
			FUNC11(hw, skb);
			return -ENOTSUPP;
		}
	}

	if (info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) {
		if (!FUNC4(ar)) {
			FUNC3(ar, ATH10K_DBG_MAC, "queued offchannel skb %pK\n",
				   skb);

			FUNC13(&ar->offchan_tx_queue, skb);
			FUNC12(hw, &ar->offchan_tx_work);
			return 0;
		}
	}

	ret = FUNC5(ar, txmode, txpath, skb);
	if (ret) {
		FUNC10(ar, "failed to submit frame: %d\n", ret);
		return ret;
	}

	return 0;
}