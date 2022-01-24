#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {size_t band; int antenna; size_t rate_idx; int /*<<< orphan*/  enc_flags; int /*<<< orphan*/  bw; int /*<<< orphan*/  flag; scalar_t__ signal; int /*<<< orphan*/  freq; int /*<<< orphan*/  mactime; } ;
struct ieee80211_hdr {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath5k_rx_status {int rs_status; int rs_antenna; scalar_t__ rs_rate; scalar_t__ rs_rssi; int /*<<< orphan*/  rs_tstamp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * antenna_rx; } ;
struct ath5k_hw {int ah_bwmode; scalar_t__ opmode; int /*<<< orphan*/  hw; int /*<<< orphan*/  ah_beacon_rssi_avg; TYPE_4__* curchan; TYPE_3__* sbands; TYPE_1__ stats; scalar_t__ ah_noise_floor; } ;
struct TYPE_8__ {size_t band; int /*<<< orphan*/  center_freq; } ;
struct TYPE_7__ {TYPE_2__* bitrates; } ;
struct TYPE_6__ {scalar_t__ hw_value_short; } ;

/* Variables and functions */
#define  AR5K_BWMODE_10MHZ 129 
#define  AR5K_BWMODE_5MHZ 128 
 int AR5K_RXERR_CRC ; 
 int AR5K_RXERR_MIC ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  RATE_INFO_BW_10 ; 
 int /*<<< orphan*/  RATE_INFO_BW_5 ; 
 int /*<<< orphan*/  RX_ENC_FLAG_SHORTPRE ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_END ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,struct sk_buff*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath5k_hw*) ; 
 size_t FUNC4 (struct ath5k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,struct sk_buff*,struct ath5k_rx_status*) ; 
 scalar_t__ FUNC7 (struct ath_common*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath5k_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct ath5k_hw *ah, struct sk_buff *skb,
		    struct ath5k_rx_status *rs)
{
	struct ieee80211_rx_status *rxs;
	struct ath_common *common = FUNC3(ah);

	FUNC5(skb);

	rxs = FUNC0(skb);

	rxs->flag = 0;
	if (FUNC11(rs->rs_status & AR5K_RXERR_MIC))
		rxs->flag |= RX_FLAG_MMIC_ERROR;
	if (FUNC11(rs->rs_status & AR5K_RXERR_CRC))
		rxs->flag |= RX_FLAG_FAILED_FCS_CRC;


	/*
	 * always extend the mac timestamp, since this information is
	 * also needed for proper IBSS merging.
	 *
	 * XXX: it might be too late to do it here, since rs_tstamp is
	 * 15bit only. that means TSF extension has to be done within
	 * 32768usec (about 32ms). it might be necessary to move this to
	 * the interrupt handler, like it is done in madwifi.
	 */
	rxs->mactime = FUNC2(ah, rs->rs_tstamp);
	rxs->flag |= RX_FLAG_MACTIME_END;

	rxs->freq = ah->curchan->center_freq;
	rxs->band = ah->curchan->band;

	rxs->signal = ah->ah_noise_floor + rs->rs_rssi;

	rxs->antenna = rs->rs_antenna;

	if (rs->rs_antenna > 0 && rs->rs_antenna < 5)
		ah->stats.antenna_rx[rs->rs_antenna]++;
	else
		ah->stats.antenna_rx[0]++; /* invalid */

	rxs->rate_idx = FUNC4(ah, rs->rs_rate);
	rxs->flag |= FUNC6(ah, skb, rs);
	switch (ah->ah_bwmode) {
	case AR5K_BWMODE_5MHZ:
		rxs->bw = RATE_INFO_BW_5;
		break;
	case AR5K_BWMODE_10MHZ:
		rxs->bw = RATE_INFO_BW_10;
		break;
	default:
		break;
	}

	if (rs->rs_rate ==
	    ah->sbands[ah->curchan->band].bitrates[rxs->rate_idx].hw_value_short)
		rxs->enc_flags |= RX_ENC_FLAG_SHORTPRE;

	FUNC10(ah, skb);

	if (FUNC7(common, (struct ieee80211_hdr *)skb->data)) {
		FUNC8(&ah->ah_beacon_rssi_avg, rs->rs_rssi);

		/* check beacons in IBSS mode */
		if (ah->opmode == NL80211_IFTYPE_ADHOC)
			FUNC1(ah, skb, rxs);
	}

	FUNC9(ah->hw, skb);
}