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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct ieee80211_sta {int dummy; } ;
struct ath10k_pktlog_hdr {scalar_t__ payload; int /*<<< orphan*/  log_type; } ;
struct ath10k_per_peer_tx_stats {int /*<<< orphan*/  failed_pkts; int /*<<< orphan*/  retry_pkts; int /*<<< orphan*/  succ_pkts; int /*<<< orphan*/  flags; int /*<<< orphan*/  ratecode; void* failed_bytes; void* retry_bytes; void* succ_bytes; } ;
struct ath10k_peer {struct ieee80211_sta* sta; } ;
struct ath10k_10_2_peer_tx_stats {size_t tx_ppdu_cnt; size_t peer_id; int /*<<< orphan*/ * failed_pkts; int /*<<< orphan*/ * retry_pkts; int /*<<< orphan*/ * success_pkts; int /*<<< orphan*/ * flags; int /*<<< orphan*/ * ratecode; int /*<<< orphan*/ * failed_bytes; int /*<<< orphan*/ * retry_bytes; int /*<<< orphan*/ * success_bytes; } ;
struct ath10k {int /*<<< orphan*/  data_lock; struct ath10k_per_peer_tx_stats peer_tx_stats; } ;

/* Variables and functions */
 scalar_t__ ATH10K_10_2_TX_STATS_OFFSET ; 
 scalar_t__ ATH_PKTLOG_TYPE_TX_STAT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC1 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,struct ieee80211_sta*,struct ath10k_per_peer_tx_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath10k *ar, u8 *data)
{
	struct ath10k_pktlog_hdr *hdr = (struct ath10k_pktlog_hdr *)data;
	struct ath10k_per_peer_tx_stats *p_tx_stats = &ar->peer_tx_stats;
	struct ath10k_10_2_peer_tx_stats *tx_stats;
	struct ieee80211_sta *sta;
	struct ath10k_peer *peer;
	u16 log_type = FUNC0(hdr->log_type);
	u32 peer_id = 0, i;

	if (log_type != ATH_PKTLOG_TYPE_TX_STAT)
		return;

	tx_stats = (struct ath10k_10_2_peer_tx_stats *)((hdr->payload) +
		    ATH10K_10_2_TX_STATS_OFFSET);

	if (!tx_stats->tx_ppdu_cnt)
		return;

	peer_id = tx_stats->peer_id;

	FUNC4();
	FUNC6(&ar->data_lock);
	peer = FUNC1(ar, peer_id);
	if (!peer || !peer->sta) {
		FUNC3(ar, "Invalid peer id %d in peer stats buffer\n",
			    peer_id);
		goto out;
	}

	sta = peer->sta;
	for (i = 0; i < tx_stats->tx_ppdu_cnt; i++) {
		p_tx_stats->succ_bytes =
			FUNC0(tx_stats->success_bytes[i]);
		p_tx_stats->retry_bytes =
			FUNC0(tx_stats->retry_bytes[i]);
		p_tx_stats->failed_bytes =
			FUNC0(tx_stats->failed_bytes[i]);
		p_tx_stats->ratecode = tx_stats->ratecode[i];
		p_tx_stats->flags = tx_stats->flags[i];
		p_tx_stats->succ_pkts = tx_stats->success_pkts[i];
		p_tx_stats->retry_pkts = tx_stats->retry_pkts[i];
		p_tx_stats->failed_pkts = tx_stats->failed_pkts[i];

		FUNC2(ar, sta, p_tx_stats);
	}
	FUNC7(&ar->data_lock);
	FUNC5();

	return;

out:
	FUNC7(&ar->data_lock);
	FUNC5();
}