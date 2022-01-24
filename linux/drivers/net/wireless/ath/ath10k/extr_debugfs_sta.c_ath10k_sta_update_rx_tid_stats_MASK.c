#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; } ;
struct ath10k_sta_tid_stats {unsigned long rx_pkt_from_fw; unsigned long rx_pkt_unchained; unsigned long rx_pkt_drop_chained; unsigned long rx_pkt_drop_filter; unsigned long* rx_pkt_err; unsigned long rx_pkt_queued_for_mac; } ;
struct ath10k_sta {struct ath10k_sta_tid_stats* tid_stats; } ;
struct ath10k {int sta_tid_stats_mask; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  hw; } ;
typedef  enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;

/* Variables and functions */
 int ATH10K_PKT_RX_ERR_MAX ; 
 int FUNC0 (size_t) ; 
 size_t IEEE80211_NUM_TIDS ; 
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ath10k_sta_tid_stats*,unsigned long) ; 
 struct ieee80211_sta* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t* FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct ath10k *ar, u8 *first_hdr,
				    unsigned long num_msdus,
				    enum ath10k_pkt_rx_err err,
				    unsigned long unchain_cnt,
				    unsigned long drop_cnt,
				    unsigned long drop_cnt_filter,
				    unsigned long queued_msdus)
{
	struct ieee80211_sta *sta;
	struct ath10k_sta *arsta;
	struct ieee80211_hdr *hdr;
	struct ath10k_sta_tid_stats *stats;
	u8 tid = IEEE80211_NUM_TIDS;
	bool non_data_frm = false;

	hdr = (struct ieee80211_hdr *)first_hdr;
	if (!FUNC4(hdr->frame_control))
		non_data_frm = true;

	if (FUNC5(hdr->frame_control))
		tid = *FUNC3(hdr) & IEEE80211_QOS_CTL_TID_MASK;

	if (!(ar->sta_tid_stats_mask & FUNC0(tid)) || non_data_frm)
		return;

	FUNC6();

	sta = FUNC2(ar->hw, hdr->addr2, NULL);
	if (!sta)
		goto exit;

	arsta = (struct ath10k_sta *)sta->drv_priv;

	FUNC8(&ar->data_lock);
	stats = &arsta->tid_stats[tid];
	stats->rx_pkt_from_fw += num_msdus;
	stats->rx_pkt_unchained += unchain_cnt;
	stats->rx_pkt_drop_chained += drop_cnt;
	stats->rx_pkt_drop_filter += drop_cnt_filter;
	if (err != ATH10K_PKT_RX_ERR_MAX)
		stats->rx_pkt_err[err] += queued_msdus;
	stats->rx_pkt_queued_for_mac += queued_msdus;
	FUNC1(ar, &arsta->tid_stats[tid],
					    num_msdus);
	FUNC9(&ar->data_lock);

exit:
	FUNC7();
}