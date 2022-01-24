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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int enc_flags; scalar_t__ bw; scalar_t__ encoding; size_t rate_idx; size_t band; } ;
struct ieee80211_rate {int bitrate; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; } ;
struct ath_softc {int /*<<< orphan*/  hw; struct ath_hw* sc_ah; } ;
struct ath_rx_status {int /*<<< orphan*/  rs_rate; int /*<<< orphan*/  rs_datalen; } ;
struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* sbands; } ;
struct TYPE_2__ {struct ieee80211_rate* bitrates; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_TID_MASK ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RATE_INFO_BW_40 ; 
 int RX_ENC_FLAG_SHORTPRE ; 
 int RX_ENC_FLAG_SHORT_GI ; 
 scalar_t__ RX_ENC_HT ; 
 int WLAN_RC_PHY_CCK ; 
 int WLAN_RC_PHY_OFDM ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*,int,int,int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC4 (struct ath_softc*,size_t,int /*<<< orphan*/ ,int,int,int) ; 
 struct ieee80211_sta* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sta*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct ath_softc *sc,
				 struct ath_rx_status *rs,
				 struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ieee80211_sta *sta;
	struct ieee80211_rx_status *rxs;
	const struct ieee80211_rate *rate;
	bool is_sgi, is_40, is_sp;
	int phy;
	u16 len = rs->rs_datalen;
	u32 airtime = 0;
	u8 tidno;

	if (!FUNC6(hdr->frame_control))
		return;

	FUNC8();

	sta = FUNC5(sc->hw, hdr->addr2, NULL);
	if (!sta)
		goto exit;
	tidno = skb->priority & IEEE80211_QOS_CTL_TID_MASK;

	rxs = FUNC0(skb);

	is_sgi = !!(rxs->enc_flags & RX_ENC_FLAG_SHORT_GI);
	is_40 = !!(rxs->bw == RATE_INFO_BW_40);
	is_sp = !!(rxs->enc_flags & RX_ENC_FLAG_SHORTPRE);

	if (!!(rxs->encoding == RX_ENC_HT)) {
		/* MCS rates */

		airtime += FUNC4(sc, rxs->rate_idx, len,
					is_40, is_sgi, is_sp);
	} else {

		phy = FUNC1(rs->rs_rate) ? WLAN_RC_PHY_CCK : WLAN_RC_PHY_OFDM;
		rate = &common->sbands[rxs->band].bitrates[rxs->rate_idx];
		airtime += FUNC3(ah, phy, rate->bitrate * 100,
						len, rxs->rate_idx, is_sp);
	}

	FUNC7(sta, tidno, 0, airtime);
exit:
	FUNC9();
}