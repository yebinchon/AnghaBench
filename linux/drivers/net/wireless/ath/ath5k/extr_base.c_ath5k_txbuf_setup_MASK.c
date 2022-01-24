#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  void* u16 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  vif; TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_control {int /*<<< orphan*/ * sta; } ;
struct ieee80211_rate {int dummy; } ;
struct ath5k_txq {int /*<<< orphan*/  lock; int /*<<< orphan*/  qnum; scalar_t__* link; int /*<<< orphan*/  txq_len; int /*<<< orphan*/  q; } ;
struct TYPE_11__ {scalar_t__ cap_has_mrr_support; } ;
struct TYPE_10__ {int txp_requested; } ;
struct ath5k_hw {int (* ah_setup_tx_desc ) (struct ath5k_hw*,struct ath5k_desc*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int,void*,void*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; TYPE_4__ ah_capabilities; int /*<<< orphan*/  ah_tx_ant; TYPE_3__ ah_txpower; } ;
struct ath5k_desc {scalar_t__ ds_link; int /*<<< orphan*/  ds_data; } ;
struct ath5k_buf {int /*<<< orphan*/  skbaddr; scalar_t__ daddr; int /*<<< orphan*/  list; TYPE_5__* rates; struct sk_buff* skb; struct ath5k_desc* desc; } ;
typedef  int /*<<< orphan*/  mrr_tries ;
typedef  int /*<<< orphan*/  mrr_rate ;
struct TYPE_13__ {void* hw_value; } ;
struct TYPE_12__ {int flags; unsigned int count; } ;
struct TYPE_8__ {unsigned int hw_key_idx; scalar_t__ icv_len; } ;

/* Variables and functions */
 unsigned int AR5K_TXDESC_CLRDMASK ; 
 unsigned int AR5K_TXDESC_CTSENA ; 
 unsigned int AR5K_TXDESC_INTREQ ; 
 unsigned int AR5K_TXDESC_NOACK ; 
 unsigned int AR5K_TXDESC_RTSENA ; 
 unsigned int AR5K_TXKEYIX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOSPC ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_RC_USE_CTS_PROTECT ; 
 int IEEE80211_TX_RC_USE_RTS_CTS ; 
 struct ieee80211_rate* FUNC2 (int /*<<< orphan*/ ,struct ieee80211_tx_info*,struct ath5k_buf*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct ieee80211_tx_info*,struct ath5k_buf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,struct ath5k_desc*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct ieee80211_tx_info*) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct ath5k_hw*,struct ath5k_desc*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int,void*,void*) ; 

__attribute__((used)) static int
FUNC22(struct ath5k_hw *ah, struct ath5k_buf *bf,
		  struct ath5k_txq *txq, int padsize,
		  struct ieee80211_tx_control *control)
{
	struct ath5k_desc *ds = bf->desc;
	struct sk_buff *skb = bf->skb;
	struct ieee80211_tx_info *info = FUNC1(skb);
	unsigned int pktlen, flags, keyidx = AR5K_TXKEYIX_INVALID;
	struct ieee80211_rate *rate;
	unsigned int mrr_rate[3], mrr_tries[3];
	int i, ret;
	u16 hw_rate;
	u16 cts_rate = 0;
	u16 duration = 0;
	u8 rc_flags;

	flags = AR5K_TXDESC_INTREQ | AR5K_TXDESC_CLRDMASK;

	/* XXX endianness */
	bf->skbaddr = FUNC7(ah->dev, skb->data, skb->len,
			DMA_TO_DEVICE);

	if (FUNC8(ah->dev, bf->skbaddr))
		return -ENOSPC;

	FUNC14(info->control.vif, (control) ? control->sta : NULL, skb, bf->rates,
			       FUNC0(bf->rates));

	rate = FUNC2(ah->hw, info, bf, 0);

	if (!rate) {
		ret = -EINVAL;
		goto err_unmap;
	}

	if (info->flags & IEEE80211_TX_CTL_NO_ACK)
		flags |= AR5K_TXDESC_NOACK;

	rc_flags = bf->rates[0].flags;

	hw_rate = FUNC3(ah->hw, info, bf, 0);

	pktlen = skb->len;

	/* FIXME: If we are in g mode and rate is a CCK rate
	 * subtract ah->ah_txpower.txp_cck_ofdm_pwr_delta
	 * from tx power (value is in dB units already) */
	if (info->control.hw_key) {
		keyidx = info->control.hw_key->hw_key_idx;
		pktlen += info->control.hw_key->icv_len;
	}
	if (rc_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
		flags |= AR5K_TXDESC_RTSENA;
		cts_rate = FUNC13(ah->hw, info)->hw_value;
		duration = FUNC16(FUNC15(ah->hw,
			info->control.vif, pktlen, info));
	}
	if (rc_flags & IEEE80211_TX_RC_USE_CTS_PROTECT) {
		flags |= AR5K_TXDESC_CTSENA;
		cts_rate = FUNC13(ah->hw, info)->hw_value;
		duration = FUNC16(FUNC11(ah->hw,
			info->control.vif, pktlen, info));
	}

	ret = ah->ah_setup_tx_desc(ah, ds, pktlen,
		FUNC12(skb), padsize,
		FUNC10(skb),
		(ah->ah_txpower.txp_requested * 2),
		hw_rate,
		bf->rates[0].count, keyidx, ah->ah_tx_ant, flags,
		cts_rate, duration);
	if (ret)
		goto err_unmap;

	/* Set up MRR descriptor */
	if (ah->ah_capabilities.cap_has_mrr_support) {
		FUNC18(mrr_rate, 0, sizeof(mrr_rate));
		FUNC18(mrr_tries, 0, sizeof(mrr_tries));

		for (i = 0; i < 3; i++) {

			rate = FUNC2(ah->hw, info, bf, i);
			if (!rate)
				break;

			mrr_rate[i] = FUNC3(ah->hw, info, bf, i);
			mrr_tries[i] = bf->rates[i].count;
		}

		FUNC5(ah, ds,
			mrr_rate[0], mrr_tries[0],
			mrr_rate[1], mrr_tries[1],
			mrr_rate[2], mrr_tries[2]);
	}

	ds->ds_link = 0;
	ds->ds_data = bf->skbaddr;

	FUNC19(&txq->lock);
	FUNC17(&bf->list, &txq->q);
	txq->txq_len++;
	if (txq->link == NULL) /* is this first packet? */
		FUNC4(ah, txq->qnum, bf->daddr);
	else /* no, so only link it */
		*txq->link = bf->daddr;

	txq->link = &ds->ds_link;
	FUNC6(ah, txq->qnum);
	FUNC20(&txq->lock);

	return 0;
err_unmap:
	FUNC9(ah->dev, bf->skbaddr, skb->len, DMA_TO_DEVICE);
	return ret;
}