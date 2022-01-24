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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ mpdu_header_off; scalar_t__ mpdu_len; } ;
struct wcn36xx_rx_bd {TYPE_1__ pdu; } ;
struct wcn36xx {int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_band; scalar_t__ scan_freq; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int mactime; int antenna; int rate_idx; int flag; scalar_t__ rx_flags; int /*<<< orphan*/  signal; int /*<<< orphan*/  band; scalar_t__ freq; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  seq_ctrl; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 int RX_FLAG_MMIC_STRIPPED ; 
 int /*<<< orphan*/  FUNC2 (struct wcn36xx*) ; 
 scalar_t__ FUNC3 (struct wcn36xx*) ; 
 int /*<<< orphan*/  WCN36XX_DBG_BEACON ; 
 int /*<<< orphan*/  WCN36XX_DBG_BEACON_DUMP ; 
 int /*<<< orphan*/  WCN36XX_DBG_RX ; 
 int /*<<< orphan*/  WCN36XX_DBG_RX_DUMP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx_rx_bd*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,int) ; 

int FUNC15(struct wcn36xx *wcn, struct sk_buff *skb)
{
	struct ieee80211_rx_status status;
	struct ieee80211_hdr *hdr;
	struct wcn36xx_rx_bd *bd;
	u16 fc, sn;

	/*
	 * All fields must be 0, otherwise it can lead to
	 * unexpected consequences.
	 */
	FUNC10(&status, 0, sizeof(status));

	bd = (struct wcn36xx_rx_bd *)skb->data;
	FUNC5((u32 *)bd, sizeof(*bd)/sizeof(u32));
	FUNC14(WCN36XX_DBG_RX_DUMP,
			 "BD   <<< ", (char *)bd,
			 sizeof(struct wcn36xx_rx_bd));

	FUNC12(skb, bd->pdu.mpdu_header_off + bd->pdu.mpdu_len);
	FUNC11(skb, bd->pdu.mpdu_header_off);

	hdr = (struct ieee80211_hdr *) skb->data;
	fc = FUNC4(hdr->frame_control);
	sn = FUNC0(FUNC4(hdr->seq_ctrl));

	/* When scanning associate beacons to this */
	if (FUNC7(hdr->frame_control) && wcn->scan_freq) {
		status.freq = wcn->scan_freq;
		status.band = wcn->scan_band;
	} else {
		status.freq = FUNC3(wcn);
		status.band = FUNC2(wcn);
	}

	status.mactime = 10;
	status.signal = -FUNC6(bd);
	status.antenna = 1;
	status.rate_idx = 1;
	status.flag = 0;
	status.rx_flags = 0;
	status.flag |= RX_FLAG_IV_STRIPPED |
		       RX_FLAG_MMIC_STRIPPED |
		       RX_FLAG_DECRYPTED;

	FUNC13(WCN36XX_DBG_RX, "status.flags=%x\n", status.flag);

	FUNC9(FUNC1(skb), &status, sizeof(status));

	if (FUNC7(hdr->frame_control)) {
		FUNC13(WCN36XX_DBG_BEACON, "beacon skb %p len %d fc %04x sn %d\n",
			    skb, skb->len, fc, sn);
		FUNC14(WCN36XX_DBG_BEACON_DUMP, "SKB <<< ",
				 (char *)skb->data, skb->len);
	} else {
		FUNC13(WCN36XX_DBG_RX, "rx skb %p len %d fc %04x sn %d\n",
			    skb, skb->len, fc, sn);
		FUNC14(WCN36XX_DBG_RX_DUMP, "SKB <<< ",
				 (char *)skb->data, skb->len);
	}

	FUNC8(wcn->hw, skb);

	return 0;
}