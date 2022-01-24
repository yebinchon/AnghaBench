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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  flag; int /*<<< orphan*/  antenna; int /*<<< orphan*/  freq; int /*<<< orphan*/  band; int /*<<< orphan*/  mactime; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct ath_rx_status {int rs_status; int /*<<< orphan*/  rs_antenna; int /*<<< orphan*/  is_mybeacon; } ;
struct ath_hw {TYPE_2__* curchan; } ;
struct ath_htc_rx_status {int /*<<< orphan*/  rs_tstamp; int /*<<< orphan*/  rs_datalen; } ;
struct ath_common {struct ath_hw* ah; } ;
struct ath9k_htc_rxbuf {struct sk_buff* skb; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  rxfilter; int /*<<< orphan*/  spec_priv; int /*<<< orphan*/  ah; struct ieee80211_hw* hw; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int ATH9K_RXERR_PHY ; 
 scalar_t__ HTC_RX_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_END ; 
 scalar_t__ FUNC0 (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,struct ieee80211_hdr*,struct ieee80211_rx_status*,struct ath_rx_status*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,struct sk_buff*,struct ath_rx_status*,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*,struct ath_rx_status*) ; 
 struct ath_common* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct ieee80211_hdr*,struct ath_rx_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,struct ieee80211_hdr*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_rx_status*,struct ath_htc_rx_status*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static bool FUNC14(struct ath9k_htc_priv *priv,
			     struct ath9k_htc_rxbuf *rxbuf,
			     struct ieee80211_rx_status *rx_status)

{
	struct ieee80211_hdr *hdr;
	struct ieee80211_hw *hw = priv->hw;
	struct sk_buff *skb = rxbuf->skb;
	struct ath_common *common = FUNC5(priv->ah);
	struct ath_hw *ah = common->ah;
	struct ath_htc_rx_status *rxstatus;
	struct ath_rx_status rx_stats;
	bool decrypt_error = false;

	if (skb->len < HTC_RX_FRAME_HEADER_SIZE) {
		FUNC7(common, "Corrupted RX frame, dropping (len: %d)\n",
			skb->len);
		goto rx_next;
	}

	rxstatus = (struct ath_htc_rx_status *)skb->data;

	if (FUNC9(rxstatus->rs_datalen) -
	    (skb->len - HTC_RX_FRAME_HEADER_SIZE) != 0) {
		FUNC7(common,
			"Corrupted RX data len, dropping (dlen: %d, skblen: %d)\n",
			rxstatus->rs_datalen, skb->len);
		goto rx_next;
	}

	/* Get the RX status information */

	FUNC11(rx_status, 0, sizeof(struct ieee80211_rx_status));

	/* Copy everything from ath_htc_rx_status (HTC_RX_FRAME_HEADER).
	 * After this, we can drop this part of skb. */
	FUNC12(&rx_stats, rxstatus);
	FUNC4(priv, &rx_stats);
	rx_status->mactime = FUNC10(rxstatus->rs_tstamp);
	FUNC13(skb, HTC_RX_FRAME_HEADER_SIZE);

	/*
	 * everything but the rate is checked here, the rate check is done
	 * separately to avoid doing two lookups for a rate for each frame.
	 */
	hdr = (struct ieee80211_hdr *)skb->data;

	/*
	 * Process PHY errors and return so that the packet
	 * can be dropped.
	 */
	if (rx_stats.rs_status & ATH9K_RXERR_PHY) {
		/* TODO: Not using DFS processing now. */
		if (FUNC6(&priv->spec_priv, hdr,
				    &rx_stats, rx_status->mactime)) {
			/* TODO: Code to collect spectral scan statistics */
		}
		goto rx_next;
	}

	if (!FUNC2(common, hdr, rx_status, &rx_stats,
			&decrypt_error, priv->rxfilter))
		goto rx_next;

	FUNC3(common, skb, &rx_stats,
				     rx_status, decrypt_error);

	if (FUNC0(common, hw, &rx_stats, rx_status))
		goto rx_next;

	rx_stats.is_mybeacon = FUNC8(common, hdr);
	FUNC1(common, hw, &rx_stats, rx_status);

	rx_status->band = ah->curchan->chan->band;
	rx_status->freq = ah->curchan->chan->center_freq;
	rx_status->antenna = rx_stats.rs_antenna;
	rx_status->flag |= RX_FLAG_MACTIME_END;

	return true;
rx_next:
	return false;
}