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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ieee80211_txq {int /*<<< orphan*/  tid; scalar_t__ sta; scalar_t__ drv_priv; } ;
struct TYPE_4__ {scalar_t__ ack_signal; int is_valid_ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct htt_tx_done {scalar_t__ msdu_id; scalar_t__ status; scalar_t__ ack_rssi; } ;
struct device {int dummy; } ;
struct ath10k_txq {int /*<<< orphan*/  num_fw_queued; } ;
struct ath10k_skb_cb {int /*<<< orphan*/  paddr; scalar_t__ airtime_est; struct ieee80211_txq* txq; } ;
struct ath10k_htt {scalar_t__ max_num_pending_tx; scalar_t__ num_pending_tx; struct ath10k* ar; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  empty_tx_wq; int /*<<< orphan*/  pending_tx; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct ath10k {int /*<<< orphan*/  hw; TYPE_1__ bus_param; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 scalar_t__ ATH10K_DEFAULT_NOISE_FLOOR ; 
 scalar_t__ ATH10K_DEV_TYPE_HL ; 
 scalar_t__ ATH10K_INVALID_RSSI ; 
 struct ath10k_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ HTT_TX_COMPL_STATE_ACK ; 
 scalar_t__ HTT_TX_COMPL_STATE_DISCARD ; 
 scalar_t__ HTT_TX_COMPL_STATE_NOACK ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 int IEEE80211_TX_STAT_NOACK_TRANSMITTED ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_htt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct ath10k_htt *htt,
			 const struct htt_tx_done *tx_done)
{
	struct ath10k *ar = htt->ar;
	struct device *dev = ar->dev;
	struct ieee80211_tx_info *info;
	struct ieee80211_txq *txq;
	struct ath10k_skb_cb *skb_cb;
	struct ath10k_txq *artxq;
	struct sk_buff *msdu;

	FUNC2(ar, ATH10K_DBG_HTT,
		   "htt tx completion msdu_id %u status %d\n",
		   tx_done->msdu_id, tx_done->status);

	if (tx_done->msdu_id >= htt->max_num_pending_tx) {
		FUNC6(ar, "warning: msdu_id %d too big, ignoring\n",
			    tx_done->msdu_id);
		return -EINVAL;
	}

	FUNC12(&htt->tx_lock);
	msdu = FUNC8(&htt->pending_tx, tx_done->msdu_id);
	if (!msdu) {
		FUNC6(ar, "received tx completion for invalid msdu_id: %d\n",
			    tx_done->msdu_id);
		FUNC13(&htt->tx_lock);
		return -ENOENT;
	}

	skb_cb = FUNC0(msdu);
	txq = skb_cb->txq;

	if (txq) {
		artxq = (void *)txq->drv_priv;
		artxq->num_fw_queued--;
	}

	FUNC4(htt, tx_done->msdu_id);
	FUNC3(htt);
	if (htt->num_pending_tx == 0)
		FUNC15(&htt->empty_tx_wq);
	FUNC13(&htt->tx_lock);

	if (txq && txq->sta && skb_cb->airtime_est)
		FUNC9(txq->sta, txq->tid,
					       skb_cb->airtime_est, 0);

	if (ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
		FUNC7(dev, skb_cb->paddr, msdu->len, DMA_TO_DEVICE);

	FUNC5(htt->ar, msdu);

	info = FUNC1(msdu);
	FUNC11(&info->status, 0, sizeof(info->status));
	FUNC14(ar, tx_done->msdu_id);

	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
		info->flags |= IEEE80211_TX_STAT_ACK;

	if (tx_done->status == HTT_TX_COMPL_STATE_NOACK)
		info->flags &= ~IEEE80211_TX_STAT_ACK;

	if ((tx_done->status == HTT_TX_COMPL_STATE_ACK) &&
	    (info->flags & IEEE80211_TX_CTL_NO_ACK))
		info->flags |= IEEE80211_TX_STAT_NOACK_TRANSMITTED;

	if (tx_done->status == HTT_TX_COMPL_STATE_DISCARD) {
		if (info->flags & IEEE80211_TX_CTL_NO_ACK)
			info->flags &= ~IEEE80211_TX_STAT_NOACK_TRANSMITTED;
		else
			info->flags &= ~IEEE80211_TX_STAT_ACK;
	}

	if (tx_done->status == HTT_TX_COMPL_STATE_ACK &&
	    tx_done->ack_rssi != ATH10K_INVALID_RSSI) {
		info->status.ack_signal = ATH10K_DEFAULT_NOISE_FLOOR +
						tx_done->ack_rssi;
		info->status.is_valid_ack_signal = true;
	}

	FUNC10(htt->ar->hw, msdu);
	/* we do not own the msdu anymore */

	return 0;
}