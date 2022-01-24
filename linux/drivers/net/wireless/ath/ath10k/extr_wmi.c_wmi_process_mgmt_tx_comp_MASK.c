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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct mgmt_tx_compl_params {int /*<<< orphan*/  desc_id; scalar_t__ ack_rssi; scalar_t__ status; } ;
struct TYPE_2__ {int is_valid_ack_signal; scalar_t__ ack_signal; } ;
struct ieee80211_tx_info {TYPE_1__ status; int /*<<< orphan*/  flags; } ;
struct ath10k_wmi {int /*<<< orphan*/  mgmt_pending_tx; } ;
struct ath10k_mgmt_tx_pkt_addr {int /*<<< orphan*/  paddr; struct sk_buff* vaddr; } ;
struct ath10k {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; struct ath10k_wmi wmi; } ;

/* Variables and functions */
 scalar_t__ ATH10K_DEFAULT_NOISE_FLOOR ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOENT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_mgmt_tx_pkt_addr* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct ath10k *ar, struct mgmt_tx_compl_params *param)
{
	struct ath10k_mgmt_tx_pkt_addr *pkt_addr;
	struct ath10k_wmi *wmi = &ar->wmi;
	struct ieee80211_tx_info *info;
	struct sk_buff *msdu;
	int ret;

	FUNC6(&ar->data_lock);

	pkt_addr = FUNC3(&wmi->mgmt_pending_tx, param->desc_id);
	if (!pkt_addr) {
		FUNC1(ar, "received mgmt tx completion for invalid msdu_id: %d\n",
			    param->desc_id);
		ret = -ENOENT;
		goto out;
	}

	msdu = pkt_addr->vaddr;
	FUNC2(ar->dev, pkt_addr->paddr,
			 msdu->len, DMA_TO_DEVICE);
	info = FUNC0(msdu);

	if (param->status) {
		info->flags &= ~IEEE80211_TX_STAT_ACK;
	} else {
		info->flags |= IEEE80211_TX_STAT_ACK;
		info->status.ack_signal = ATH10K_DEFAULT_NOISE_FLOOR +
					  param->ack_rssi;
		info->status.is_valid_ack_signal = true;
	}

	FUNC5(ar->hw, msdu);

	ret = 0;

out:
	FUNC4(&wmi->mgmt_pending_tx, param->desc_id);
	FUNC7(&ar->data_lock);
	return ret;
}