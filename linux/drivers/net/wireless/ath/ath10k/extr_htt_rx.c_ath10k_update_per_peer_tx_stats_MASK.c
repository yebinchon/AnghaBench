#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rate_info {int flags; int nss; int mcs; int /*<<< orphan*/  bw; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_12__ {TYPE_3__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_4__ def; } ;
struct TYPE_13__ {int legacy; int mcs; int nss; int bw; TYPE_7__* rates; int /*<<< orphan*/  flags; } ;
struct TYPE_14__ {TYPE_5__ status; int /*<<< orphan*/  flags; } ;
struct ath10k_sta {TYPE_6__ tx_info; TYPE_5__ txrate; int /*<<< orphan*/  last_tx_bitrate; TYPE_2__* arvif; } ;
struct ath10k_per_peer_tx_stats {scalar_t__ succ_pkts; int /*<<< orphan*/  ratecode; int /*<<< orphan*/  flags; } ;
struct ath10k {int /*<<< orphan*/  hw; int /*<<< orphan*/  data_lock; } ;
typedef  scalar_t__ s8 ;
struct TYPE_15__ {int idx; int flags; int count; } ;
struct TYPE_11__ {int /*<<< orphan*/  band; } ;
struct TYPE_10__ {TYPE_1__* vif; } ;
struct TYPE_9__ {int /*<<< orphan*/  chanctx_conf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_80_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_MCS ; 
 int IEEE80211_TX_RC_SHORT_GI ; 
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ; 
 int IEEE80211_TX_RC_VHT_MCS ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  NL80211_BAND_5GHZ ; 
#define  RATE_INFO_BW_40 133 
#define  RATE_INFO_BW_80 132 
 int /*<<< orphan*/  RATE_INFO_FLAGS_MCS ; 
 int /*<<< orphan*/  RATE_INFO_FLAGS_SHORT_GI ; 
 int /*<<< orphan*/  RATE_INFO_FLAGS_VHT_MCS ; 
#define  WMI_RATE_PREAMBLE_CCK 131 
#define  WMI_RATE_PREAMBLE_HT 130 
#define  WMI_RATE_PREAMBLE_OFDM 129 
#define  WMI_RATE_PREAMBLE_VHT 128 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct ath10k_sta*,struct ath10k_per_peer_tx_stats*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ath10k*) ; 
 scalar_t__ FUNC10 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ieee80211_sta*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_chanctx_conf* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct ath10k *ar,
				struct ieee80211_sta *sta,
				struct ath10k_per_peer_tx_stats *peer_stats)
{
	struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
	struct ieee80211_chanctx_conf *conf = NULL;
	u8 rate = 0, sgi;
	s8 rate_idx = 0;
	bool skip_auto_rate;
	struct rate_info txrate;

	FUNC15(&ar->data_lock);

	txrate.flags = FUNC6(peer_stats->ratecode);
	txrate.bw = FUNC1(peer_stats->flags);
	txrate.nss = FUNC5(peer_stats->ratecode);
	txrate.mcs = FUNC4(peer_stats->ratecode);
	sgi = FUNC2(peer_stats->flags);
	skip_auto_rate = FUNC0(peer_stats->flags);

	/* Firmware's rate control skips broadcast/management frames,
	 * if host has configure fixed rates and in some other special cases.
	 */
	if (skip_auto_rate)
		return;

	if (txrate.flags == WMI_RATE_PREAMBLE_VHT && txrate.mcs > 9) {
		FUNC11(ar, "Invalid VHT mcs %hhd peer stats",  txrate.mcs);
		return;
	}

	if (txrate.flags == WMI_RATE_PREAMBLE_HT &&
	    (txrate.mcs > 7 || txrate.nss < 1)) {
		FUNC11(ar, "Invalid HT mcs %hhd nss %hhd peer stats",
			    txrate.mcs, txrate.nss);
		return;
	}

	FUNC16(&arsta->txrate, 0, sizeof(arsta->txrate));
	FUNC16(&arsta->tx_info.status, 0, sizeof(arsta->tx_info.status));
	if (txrate.flags == WMI_RATE_PREAMBLE_CCK ||
	    txrate.flags == WMI_RATE_PREAMBLE_OFDM) {
		rate = FUNC3(peer_stats->ratecode);
		/* This is hacky, FW sends CCK rate 5.5Mbps as 6 */
		if (rate == 6 && txrate.flags == WMI_RATE_PREAMBLE_CCK)
			rate = 5;
		rate_idx = FUNC10(ar, rate);
		if (rate_idx < 0)
			return;
		arsta->txrate.legacy = rate;
	} else if (txrate.flags == WMI_RATE_PREAMBLE_HT) {
		arsta->txrate.flags = RATE_INFO_FLAGS_MCS;
		arsta->txrate.mcs = txrate.mcs + 8 * (txrate.nss - 1);
	} else {
		arsta->txrate.flags = RATE_INFO_FLAGS_VHT_MCS;
		arsta->txrate.mcs = txrate.mcs;
	}

	switch (txrate.flags) {
	case WMI_RATE_PREAMBLE_OFDM:
		if (arsta->arvif && arsta->arvif->vif)
			conf = FUNC17(arsta->arvif->vif->chanctx_conf);
		if (conf && conf->def.chan->band == NL80211_BAND_5GHZ)
			arsta->tx_info.status.rates[0].idx = rate_idx - 4;
		break;
	case WMI_RATE_PREAMBLE_CCK:
		arsta->tx_info.status.rates[0].idx = rate_idx;
		if (sgi)
			arsta->tx_info.status.rates[0].flags |=
				(IEEE80211_TX_RC_USE_SHORT_PREAMBLE |
				 IEEE80211_TX_RC_SHORT_GI);
		break;
	case WMI_RATE_PREAMBLE_HT:
		arsta->tx_info.status.rates[0].idx =
				txrate.mcs + ((txrate.nss - 1) * 8);
		if (sgi)
			arsta->tx_info.status.rates[0].flags |=
					IEEE80211_TX_RC_SHORT_GI;
		arsta->tx_info.status.rates[0].flags |= IEEE80211_TX_RC_MCS;
		break;
	case WMI_RATE_PREAMBLE_VHT:
		FUNC13(&arsta->tx_info.status.rates[0],
				       txrate.mcs, txrate.nss);
		if (sgi)
			arsta->tx_info.status.rates[0].flags |=
						IEEE80211_TX_RC_SHORT_GI;
		arsta->tx_info.status.rates[0].flags |= IEEE80211_TX_RC_VHT_MCS;
		break;
	}

	arsta->txrate.nss = txrate.nss;
	arsta->txrate.bw = FUNC8(txrate.bw);
	arsta->last_tx_bitrate = FUNC12(&arsta->txrate);
	if (sgi)
		arsta->txrate.flags |= RATE_INFO_FLAGS_SHORT_GI;

	switch (arsta->txrate.bw) {
	case RATE_INFO_BW_40:
		arsta->tx_info.status.rates[0].flags |=
				IEEE80211_TX_RC_40_MHZ_WIDTH;
		break;
	case RATE_INFO_BW_80:
		arsta->tx_info.status.rates[0].flags |=
				IEEE80211_TX_RC_80_MHZ_WIDTH;
		break;
	}

	if (peer_stats->succ_pkts) {
		arsta->tx_info.flags = IEEE80211_TX_STAT_ACK;
		arsta->tx_info.status.rates[0].count = 1;
		FUNC14(ar->hw, sta, &arsta->tx_info);
	}

	if (FUNC9(ar))
		FUNC7(ar, arsta, peer_stats,
						    rate_idx);
}