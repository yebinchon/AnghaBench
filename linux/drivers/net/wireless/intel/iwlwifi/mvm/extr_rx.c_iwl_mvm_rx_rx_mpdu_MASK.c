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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_phy_info {int phy_flags; int /*<<< orphan*/  channel; int /*<<< orphan*/  system_timestamp; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  rate_n_flags; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_mpdu_res_start {int /*<<< orphan*/  byte_count; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_vif {scalar_t__ csa_target_freq; } ;
struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int /*<<< orphan*/  paused; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; int /*<<< orphan*/  ampdu_ref; TYPE_1__ tcm; int /*<<< orphan*/  fwrt; int /*<<< orphan*/  csa_tx_blocked_vif; int /*<<< orphan*/  hw; int /*<<< orphan*/ * fw_id_to_mac_id; struct iwl_rx_phy_info last_phy_info; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_low_rssi {int /*<<< orphan*/  rssi; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int flag; scalar_t__ freq; scalar_t__ signal; int enc_flags; int rate_idx; int nss; int /*<<< orphan*/  boottime_ns; int /*<<< orphan*/  band; int /*<<< orphan*/  encoding; int /*<<< orphan*/  bw; int /*<<< orphan*/  ampdu_reference; scalar_t__ mactime; void* device_timestamp; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr2; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_RSSI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_rx_status* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,char*,scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
 int RATE_HT_MCS_GF_MSK ; 
 int RATE_HT_MCS_INDEX_MSK ; 
 int /*<<< orphan*/  RATE_INFO_BW_160 ; 
 int /*<<< orphan*/  RATE_INFO_BW_40 ; 
 int /*<<< orphan*/  RATE_INFO_BW_80 ; 
 int RATE_MCS_BF_MSK ; 
 int RATE_MCS_CCK_MSK ; 
#define  RATE_MCS_CHAN_WIDTH_160 131 
#define  RATE_MCS_CHAN_WIDTH_20 130 
#define  RATE_MCS_CHAN_WIDTH_40 129 
#define  RATE_MCS_CHAN_WIDTH_80 128 
 int RATE_MCS_CHAN_WIDTH_MSK ; 
 int RATE_MCS_HT_MSK ; 
 int RATE_MCS_LDPC_MSK ; 
 int RATE_MCS_SGI_MSK ; 
 int RATE_MCS_STBC_MSK ; 
 int RATE_MCS_STBC_POS ; 
 int RATE_MCS_VHT_MSK ; 
 int RATE_VHT_MCS_NSS_MSK ; 
 int RATE_VHT_MCS_NSS_POS ; 
 int RATE_VHT_MCS_RATE_CODE_MSK ; 
 int RX_ENC_FLAG_BF ; 
 int RX_ENC_FLAG_HT_GF ; 
 int RX_ENC_FLAG_LDPC ; 
 int RX_ENC_FLAG_SHORTPRE ; 
 int RX_ENC_FLAG_SHORT_GI ; 
 int RX_ENC_FLAG_STBC_SHIFT ; 
 int /*<<< orphan*/  RX_ENC_HT ; 
 int /*<<< orphan*/  RX_ENC_VHT ; 
 int RX_FLAG_AMPDU_DETAILS ; 
 int RX_FLAG_FAILED_FCS_CRC ; 
 int RX_FLAG_MACTIME_PLCP_START ; 
 int RX_MDPU_RES_STATUS_STA_ID_SHIFT ; 
 int RX_MPDU_RES_STATUS_CRC_OK ; 
 int RX_MPDU_RES_STATUS_OVERRUN_OK ; 
 int RX_MPDU_RES_STATUS_SRC_STA_FOUND ; 
 int RX_MPDU_RES_STATUS_STA_ID_MSK ; 
 int /*<<< orphan*/  RX_RES_PHY_FLAGS_AGG ; 
 int /*<<< orphan*/  RX_RES_PHY_FLAGS_BAND_24 ; 
 int /*<<< orphan*/  RX_RES_PHY_FLAGS_SHORT_PREAMBLE ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_FOUND ; 
 scalar_t__ FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct sk_buff* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,int /*<<< orphan*/ *) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct iwl_mvm*,struct iwl_rx_phy_info*,struct ieee80211_rx_status*) ; 
 int FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct sk_buff*,struct ieee80211_hdr*,int,int,struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC23 (struct ieee80211_sta*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct iwl_mvm*,struct ieee80211_sta*,struct ieee80211_hdr*,int,struct iwl_rx_phy_info*,int) ; 
 scalar_t__ FUNC25 (struct iwl_mvm*,struct ieee80211_hdr*,struct ieee80211_rx_status*,int,int*) ; 
 struct iwl_mvm_sta* FUNC26 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC27 (struct iwl_mvm*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct iwl_mvm*,int,int) ; 
 struct iwl_mvm_vif* FUNC29 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 void* FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ) ; 
 void* FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (struct iwl_mvm*,struct iwl_mvm_sta*,struct ieee80211_rx_status*) ; 
 struct iwl_rx_packet* FUNC40 (struct iwl_rx_cmd_buffer*) ; 
 scalar_t__ FUNC41 (int) ; 

void FUNC42(struct iwl_mvm *mvm, struct napi_struct *napi,
			struct iwl_rx_cmd_buffer *rxb)
{
	struct ieee80211_hdr *hdr;
	struct ieee80211_rx_status *rx_status;
	struct iwl_rx_packet *pkt = FUNC40(rxb);
	struct iwl_rx_phy_info *phy_info;
	struct iwl_rx_mpdu_res_start *rx_res;
	struct ieee80211_sta *sta = NULL;
	struct sk_buff *skb;
	u32 len;
	u32 rate_n_flags;
	u32 rx_pkt_status;
	u8 crypt_len = 0;

	phy_info = &mvm->last_phy_info;
	rx_res = (struct iwl_rx_mpdu_res_start *)pkt->data;
	hdr = (struct ieee80211_hdr *)(pkt->data + sizeof(*rx_res));
	len = FUNC32(rx_res->byte_count);
	rx_pkt_status = FUNC34((__le32 *)
		(pkt->data + sizeof(*rx_res) + len));

	/* Dont use dev_alloc_skb(), we'll have enough headroom once
	 * ieee80211_hdr pulled.
	 */
	skb = FUNC9(128, GFP_ATOMIC);
	if (!skb) {
		FUNC6(mvm, "alloc_skb failed\n");
		return;
	}

	rx_status = FUNC1(skb);

	/*
	 * drop the packet if it has failed being decrypted by HW
	 */
	if (FUNC25(mvm, hdr, rx_status, rx_pkt_status,
					 &crypt_len)) {
		FUNC3(mvm, "Bad decryption results 0x%08x\n",
			       rx_pkt_status);
		FUNC30(skb);
		return;
	}

	/*
	 * Keep packets with CRC errors (and with overrun) for monitor mode
	 * (otherwise the firmware discards them) but mark them as bad.
	 */
	if (!(rx_pkt_status & RX_MPDU_RES_STATUS_CRC_OK) ||
	    !(rx_pkt_status & RX_MPDU_RES_STATUS_OVERRUN_OK)) {
		FUNC4(mvm, "Bad CRC or FIFO: 0x%08X.\n", rx_pkt_status);
		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
	}

	/* This will be used in several places later */
	rate_n_flags = FUNC33(phy_info->rate_n_flags);

	/* rx_status carries information about the packet to mac80211 */
	rx_status->mactime = FUNC35(phy_info->timestamp);
	rx_status->device_timestamp = FUNC33(phy_info->system_timestamp);
	rx_status->band =
		(phy_info->phy_flags & FUNC10(RX_RES_PHY_FLAGS_BAND_24)) ?
				NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
	rx_status->freq =
		FUNC11(FUNC32(phy_info->channel),
					       rx_status->band);

	/* TSF as indicated by the firmware  is at INA time */
	rx_status->flag |= RX_FLAG_MACTIME_PLCP_START;

	FUNC20(mvm, phy_info, rx_status);

	FUNC5(mvm, "Rssi %d, TSF %llu\n", rx_status->signal,
			      (unsigned long long)rx_status->mactime);

	FUNC37();
	if (rx_pkt_status & RX_MPDU_RES_STATUS_SRC_STA_FOUND) {
		u32 id = rx_pkt_status & RX_MPDU_RES_STATUS_STA_ID_MSK;

		id >>= RX_MDPU_RES_STATUS_STA_ID_SHIFT;

		if (!FUNC8(id >= FUNC0(mvm->fw_id_to_mac_id))) {
			sta = FUNC36(mvm->fw_id_to_mac_id[id]);
			if (FUNC2(sta))
				sta = NULL;
		}
	} else if (!FUNC17(hdr->addr2)) {
		/* This is fine since we prevent two stations with the same
		 * address from being added.
		 */
		sta = FUNC12(mvm->hw, hdr->addr2, NULL);
	}

	if (sta) {
		struct iwl_mvm_sta *mvmsta = FUNC26(sta);
		struct ieee80211_vif *tx_blocked_vif =
			FUNC36(mvm->csa_tx_blocked_vif);
		struct iwl_fw_dbg_trigger_tlv *trig;
		struct ieee80211_vif *vif = mvmsta->vif;

		/* We have tx blocked stations (with CS bit). If we heard
		 * frames from a blocked station on a new channel we can
		 * TX to it again.
		 */
		if (FUNC41(tx_blocked_vif) && vif == tx_blocked_vif) {
			struct iwl_mvm_vif *mvmvif =
				FUNC29(tx_blocked_vif);

			if (mvmvif->csa_target_freq == rx_status->freq)
				FUNC27(mvm, sta,
								 false);
		}

		FUNC39(mvm, mvmsta, rx_status);

		trig = FUNC19(&mvm->fwrt,
					     FUNC16(vif),
					     FW_DBG_TRIGGER_RSSI);

		if (trig && FUNC13(hdr->frame_control)) {
			struct iwl_fw_dbg_trigger_low_rssi *rssi_trig;
			s32 rssi;

			rssi_trig = (void *)trig->data;
			rssi = FUNC33(rssi_trig->rssi);

			if (rx_status->signal < rssi)
				FUNC18(&mvm->fwrt, trig,
							NULL);
		}

		if (!mvm->tcm.paused && len >= sizeof(*hdr) &&
		    !FUNC17(hdr->addr1) &&
		    FUNC14(hdr->frame_control))
			FUNC24(mvm, sta, hdr, len, phy_info,
					      rate_n_flags);

		if (FUNC14(hdr->frame_control))
			FUNC23(sta, skb, rx_pkt_status);
	}
	FUNC38();

	/* set the preamble flag if appropriate */
	if (phy_info->phy_flags & FUNC10(RX_RES_PHY_FLAGS_SHORT_PREAMBLE))
		rx_status->enc_flags |= RX_ENC_FLAG_SHORTPRE;

	if (phy_info->phy_flags & FUNC10(RX_RES_PHY_FLAGS_AGG)) {
		/*
		 * We know which subframes of an A-MPDU belong
		 * together since we get a single PHY response
		 * from the firmware for all of them
		 */
		rx_status->flag |= RX_FLAG_AMPDU_DETAILS;
		rx_status->ampdu_reference = mvm->ampdu_ref;
	}

	/* Set up the HT phy flags */
	switch (rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) {
	case RATE_MCS_CHAN_WIDTH_20:
		break;
	case RATE_MCS_CHAN_WIDTH_40:
		rx_status->bw = RATE_INFO_BW_40;
		break;
	case RATE_MCS_CHAN_WIDTH_80:
		rx_status->bw = RATE_INFO_BW_80;
		break;
	case RATE_MCS_CHAN_WIDTH_160:
		rx_status->bw = RATE_INFO_BW_160;
		break;
	}
	if (!(rate_n_flags & RATE_MCS_CCK_MSK) &&
	    rate_n_flags & RATE_MCS_SGI_MSK)
		rx_status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
	if (rate_n_flags & RATE_HT_MCS_GF_MSK)
		rx_status->enc_flags |= RX_ENC_FLAG_HT_GF;
	if (rate_n_flags & RATE_MCS_LDPC_MSK)
		rx_status->enc_flags |= RX_ENC_FLAG_LDPC;
	if (rate_n_flags & RATE_MCS_HT_MSK) {
		u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
				RATE_MCS_STBC_POS;
		rx_status->encoding = RX_ENC_HT;
		rx_status->rate_idx = rate_n_flags & RATE_HT_MCS_INDEX_MSK;
		rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
	} else if (rate_n_flags & RATE_MCS_VHT_MSK) {
		u8 stbc = (rate_n_flags & RATE_MCS_STBC_MSK) >>
				RATE_MCS_STBC_POS;
		rx_status->nss =
			((rate_n_flags & RATE_VHT_MCS_NSS_MSK) >>
						RATE_VHT_MCS_NSS_POS) + 1;
		rx_status->rate_idx = rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK;
		rx_status->encoding = RX_ENC_VHT;
		rx_status->enc_flags |= stbc << RX_ENC_FLAG_STBC_SHIFT;
		if (rate_n_flags & RATE_MCS_BF_MSK)
			rx_status->enc_flags |= RX_ENC_FLAG_BF;
	} else {
		int rate = FUNC21(rate_n_flags,
							       rx_status->band);

		if (FUNC7(rate < 0 || rate > 0xFF,
			 "Invalid rate flags 0x%x, band %d,\n",
			 rate_n_flags, rx_status->band)) {
			FUNC30(skb);
			return;
		}
		rx_status->rate_idx = rate;
	}

#ifdef CONFIG_IWLWIFI_DEBUGFS
	iwl_mvm_update_frame_stats(mvm, rate_n_flags,
				   rx_status->flag & RX_FLAG_AMPDU_DETAILS);
#endif

	if (FUNC41((FUNC13(hdr->frame_control) ||
		      FUNC15(hdr->frame_control)) &&
		     mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_ENABLED))
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_FOUND;

	if (FUNC41(FUNC13(hdr->frame_control) ||
		     FUNC15(hdr->frame_control)))
		rx_status->boottime_ns = FUNC31();

	FUNC22(mvm, sta, napi, skb, hdr, len,
					crypt_len, rxb);
}