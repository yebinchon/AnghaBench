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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ ip_summed; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct htt_data_tx_desc {int flags0; int /*<<< orphan*/  peerid; scalar_t__ frags_paddr; void* id; void* len; void* flags1; } ;
struct htt_cmd_hdr {int /*<<< orphan*/  msg_type; } ;
struct ath10k_skb_cb {int flags; } ;
struct ath10k_htt {int /*<<< orphan*/  eid; struct ath10k* ar; } ;
struct TYPE_2__ {scalar_t__ hl_msdu_ids; } ;
struct ath10k {int /*<<< orphan*/  htc; TYPE_1__ bus_param; int /*<<< orphan*/  dev_flags; } ;
typedef  enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 int /*<<< orphan*/  ATH10K_FLAG_RAW_MODE ; 
#define  ATH10K_HW_TXRX_ETHERNET 131 
#define  ATH10K_HW_TXRX_MGMT 130 
#define  ATH10K_HW_TXRX_NATIVE_WIFI 129 
#define  ATH10K_HW_TXRX_RAW 128 
 struct ath10k_skb_cb* FUNC0 (struct sk_buff*) ; 
 int ATH10K_SKB_F_NO_HWCRYPT ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int ENOMEM ; 
 int HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT ; 
 int HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT ; 
 int /*<<< orphan*/  HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE ; 
 int HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD ; 
 int HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD ; 
 int /*<<< orphan*/  HTT_DATA_TX_DESC_FLAGS1_EXT_TID ; 
 int HTT_DATA_TX_DESC_FLAGS1_POSTPONED ; 
 int /*<<< orphan*/  HTT_DATA_TX_DESC_FLAGS1_VDEV_ID ; 
 int /*<<< orphan*/  HTT_H2T_MSG_TYPE_TX_FRM ; 
 int /*<<< orphan*/  HTT_INVALID_PEERID ; 
 scalar_t__ HTT_TX_HL_NEEDED_HEADROOM ; 
 int /*<<< orphan*/  IEEE80211_CCMP_MIC_LEN ; 
 int FUNC1 (int const,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC7 (struct ath10k_htt*,struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC20 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txmode,
			    struct sk_buff *msdu)
{
	struct ath10k *ar = htt->ar;
	int res, data_len;
	struct htt_cmd_hdr *cmd_hdr;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)msdu->data;
	struct htt_data_tx_desc *tx_desc;
	struct ath10k_skb_cb *skb_cb = FUNC0(msdu);
	struct sk_buff *tmp_skb;
	bool is_eth = (txmode == ATH10K_HW_TXRX_ETHERNET);
	u8 vdev_id = FUNC9(ar, msdu);
	u8 tid = FUNC8(msdu, is_eth);
	u8 flags0 = 0;
	u16 flags1 = 0;
	u16 msdu_id = 0;

	if ((FUNC12(hdr->frame_control) ||
	     FUNC13(hdr->frame_control) ||
	     FUNC14(hdr->frame_control)) &&
	     FUNC11(hdr->frame_control)) {
		FUNC19(msdu, IEEE80211_CCMP_MIC_LEN);
	}

	data_len = msdu->len;

	switch (txmode) {
	case ATH10K_HW_TXRX_RAW:
	case ATH10K_HW_TXRX_NATIVE_WIFI:
		flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;
		/* fall through */
	case ATH10K_HW_TXRX_ETHERNET:
		flags0 |= FUNC1(txmode, HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
		break;
	case ATH10K_HW_TXRX_MGMT:
		flags0 |= FUNC1(ATH10K_HW_TXRX_MGMT,
			     HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
		flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;
		break;
	}

	if (skb_cb->flags & ATH10K_SKB_F_NO_HWCRYPT)
		flags0 |= HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT;

	flags1 |= FUNC1((u16)vdev_id, HTT_DATA_TX_DESC_FLAGS1_VDEV_ID);
	flags1 |= FUNC1((u16)tid, HTT_DATA_TX_DESC_FLAGS1_EXT_TID);
	if (msdu->ip_summed == CHECKSUM_PARTIAL &&
	    !FUNC21(ATH10K_FLAG_RAW_MODE, &ar->dev_flags)) {
		flags1 |= HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD;
		flags1 |= HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD;
	}

	/* Prepend the HTT header and TX desc struct to the data message
	 * and realloc the skb if it does not have enough headroom.
	 */
	if (FUNC17(msdu) < HTT_TX_HL_NEEDED_HEADROOM) {
		tmp_skb = msdu;

		FUNC4(htt->ar, ATH10K_DBG_HTT,
			   "Not enough headroom in skb. Current headroom: %u, needed: %u. Reallocating...\n",
			   FUNC17(msdu), HTT_TX_HL_NEEDED_HEADROOM);
		msdu = FUNC20(msdu, HTT_TX_HL_NEEDED_HEADROOM);
		FUNC15(tmp_skb);
		if (!msdu) {
			FUNC10(htt->ar, "htt hl tx: Unable to realloc skb!\n");
			res = -ENOMEM;
			goto out;
		}
	}

	if (ar->bus_param.hl_msdu_ids) {
		flags1 |= HTT_DATA_TX_DESC_FLAGS1_POSTPONED;
		res = FUNC7(htt, msdu);
		if (res < 0) {
			FUNC5(ar, "msdu_id allocation failed %d\n", res);
			goto out;
		}
		msdu_id = res;
	}

	/* As msdu is freed by mac80211 (in ieee80211_tx_status()) and by
	 * ath10k (in ath10k_htt_htc_tx_complete()) we have to increase
	 * reference by one to avoid a use-after-free case and a double
	 * free.
	 */
	FUNC16(msdu);

	FUNC18(msdu, sizeof(*cmd_hdr));
	FUNC18(msdu, sizeof(*tx_desc));
	cmd_hdr = (struct htt_cmd_hdr *)msdu->data;
	tx_desc = (struct htt_data_tx_desc *)(msdu->data + sizeof(*cmd_hdr));

	cmd_hdr->msg_type = HTT_H2T_MSG_TYPE_TX_FRM;
	tx_desc->flags0 = flags0;
	tx_desc->flags1 = FUNC2(flags1);
	tx_desc->len = FUNC2(data_len);
	tx_desc->id = FUNC2(msdu_id);
	tx_desc->frags_paddr = 0; /* always zero */
	/* Initialize peer_id to INVALID_PEER because this is NOT
	 * Reinjection path
	 */
	tx_desc->peerid = FUNC3(HTT_INVALID_PEERID);

	res = FUNC6(&htt->ar->htc, htt->eid, msdu);

out:
	return res;
}