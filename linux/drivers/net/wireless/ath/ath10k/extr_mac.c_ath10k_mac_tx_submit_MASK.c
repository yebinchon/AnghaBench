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
struct ath10k_htt {int dummy; } ;
struct ath10k {int /*<<< orphan*/  hw; struct ath10k_htt htt; } ;
typedef  enum ath10k_mac_tx_path { ____Placeholder_ath10k_mac_tx_path } ath10k_mac_tx_path ;
typedef  enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;

/* Variables and functions */
#define  ATH10K_MAC_TX_HTT 131 
#define  ATH10K_MAC_TX_HTT_MGMT 130 
#define  ATH10K_MAC_TX_UNKNOWN 129 
#define  ATH10K_MAC_TX_WMI_MGMT 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath10k_htt*,struct sk_buff*) ; 
 int FUNC2 (struct ath10k_htt*,int,struct sk_buff*) ; 
 int FUNC3 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar,
				enum ath10k_hw_txrx_mode txmode,
				enum ath10k_mac_tx_path txpath,
				struct sk_buff *skb)
{
	struct ath10k_htt *htt = &ar->htt;
	int ret = -EINVAL;

	switch (txpath) {
	case ATH10K_MAC_TX_HTT:
		ret = FUNC2(htt, txmode, skb);
		break;
	case ATH10K_MAC_TX_HTT_MGMT:
		ret = FUNC1(htt, skb);
		break;
	case ATH10K_MAC_TX_WMI_MGMT:
		ret = FUNC3(ar, skb);
		break;
	case ATH10K_MAC_TX_UNKNOWN:
		FUNC0(1);
		ret = -EINVAL;
		break;
	}

	if (ret) {
		FUNC4(ar, "failed to transmit packet, dropping: %d\n",
			    ret);
		FUNC5(ar->hw, skb);
	}

	return ret;
}