#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_5__ {TYPE_1__* txstats; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct ath_softc {TYPE_3__ debug; } ;
struct TYPE_4__ {scalar_t__ tx_bytes_all; scalar_t__ tx_pkts_all; } ;

/* Variables and functions */
 size_t ATH9K_PHYERR_CCK_TIMING ; 
 size_t ATH9K_PHYERR_OFDM_TIMING ; 
 size_t ATH9K_PHYERR_RADAR ; 
 int ATH9K_SSTATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_AC_BE ; 
 int /*<<< orphan*/  IEEE80211_AC_BK ; 
 int /*<<< orphan*/  IEEE80211_AC_VI ; 
 int /*<<< orphan*/  IEEE80211_AC_VO ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  a_aggr ; 
 int /*<<< orphan*/  a_completed ; 
 int /*<<< orphan*/  a_queued_hw ; 
 int /*<<< orphan*/  a_retries ; 
 int /*<<< orphan*/  a_xretries ; 
 int /*<<< orphan*/  completed ; 
 int /*<<< orphan*/  crc_err ; 
 int /*<<< orphan*/  data_underrun ; 
 int /*<<< orphan*/  decrypt_busy_err ; 
 int /*<<< orphan*/  decrypt_crc_err ; 
 int /*<<< orphan*/  delim_underrun ; 
 int /*<<< orphan*/  desc_cfg_err ; 
 int /*<<< orphan*/  fifo_underrun ; 
 int /*<<< orphan*/  mic_err ; 
 int /*<<< orphan*/  phy_err ; 
 int /*<<< orphan*/ * phy_err_stats ; 
 int /*<<< orphan*/  post_delim_crc_err ; 
 int /*<<< orphan*/  pre_delim_crc_err ; 
 int /*<<< orphan*/  queued ; 
 int /*<<< orphan*/  rx_bytes_all ; 
 int /*<<< orphan*/  rx_pkts_all ; 
 int /*<<< orphan*/  timer_exp ; 
 int /*<<< orphan*/  tx_bytes_all ; 
 int /*<<< orphan*/  tx_pkts_all ; 
 int /*<<< orphan*/  xretries ; 
 int /*<<< orphan*/  xtxop ; 

void FUNC4(struct ieee80211_hw *hw,
			struct ieee80211_vif *vif,
			struct ethtool_stats *stats, u64 *data)
{
	struct ath_softc *sc = hw->priv;
	int i = 0;

	data[i++] = (sc->debug.stats.txstats[FUNC2(IEEE80211_AC_BE)].tx_pkts_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_BK)].tx_pkts_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_VI)].tx_pkts_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_VO)].tx_pkts_all);
	data[i++] = (sc->debug.stats.txstats[FUNC2(IEEE80211_AC_BE)].tx_bytes_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_BK)].tx_bytes_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_VI)].tx_bytes_all +
		     sc->debug.stats.txstats[FUNC2(IEEE80211_AC_VO)].tx_bytes_all);
	FUNC1(rx_pkts_all);
	FUNC1(rx_bytes_all);

	FUNC0(tx_pkts_all);
	FUNC0(tx_bytes_all);
	FUNC0(queued);
	FUNC0(completed);
	FUNC0(xretries);
	FUNC0(a_aggr);
	FUNC0(a_queued_hw);
	FUNC0(a_completed);
	FUNC0(a_retries);
	FUNC0(a_xretries);
	FUNC0(fifo_underrun);
	FUNC0(xtxop);
	FUNC0(timer_exp);
	FUNC0(desc_cfg_err);
	FUNC0(data_underrun);
	FUNC0(delim_underrun);

	FUNC1(crc_err);
	FUNC1(decrypt_crc_err);
	FUNC1(phy_err);
	FUNC1(mic_err);
	FUNC1(pre_delim_crc_err);
	FUNC1(post_delim_crc_err);
	FUNC1(decrypt_busy_err);

	FUNC1(phy_err_stats[ATH9K_PHYERR_RADAR]);
	FUNC1(phy_err_stats[ATH9K_PHYERR_OFDM_TIMING]);
	FUNC1(phy_err_stats[ATH9K_PHYERR_CCK_TIMING]);

	FUNC3(i != ATH9K_SSTATS_LEN);
}