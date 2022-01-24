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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_sta {int dummy; } ;
struct htt_resp_hdr {int dummy; } ;
struct TYPE_2__ {int num_ppdu; int ppdu_len; scalar_t__ payload; } ;
struct htt_resp {TYPE_1__ peer_tx_stats; } ;
struct htt_per_peer_tx_stats_ind {int /*<<< orphan*/  tx_duration; int /*<<< orphan*/  failed_pkts; int /*<<< orphan*/  retry_pkts; int /*<<< orphan*/  succ_pkts; int /*<<< orphan*/  flags; int /*<<< orphan*/  ratecode; int /*<<< orphan*/  failed_bytes; int /*<<< orphan*/  retry_bytes; int /*<<< orphan*/  succ_bytes; int /*<<< orphan*/  peer_id; } ;
struct ath10k_per_peer_tx_stats {void* duration; void* failed_pkts; void* retry_pkts; void* succ_pkts; int /*<<< orphan*/  flags; int /*<<< orphan*/  ratecode; void* failed_bytes; void* retry_bytes; void* succ_bytes; } ;
struct ath10k_peer {struct ieee80211_sta* sta; } ;
struct ath10k {int /*<<< orphan*/  data_lock; struct ath10k_per_peer_tx_stats peer_tx_stats; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct ieee80211_sta*,struct ath10k_per_peer_tx_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ath10k *ar,
					struct sk_buff *skb)
{
	struct htt_resp *resp = (struct htt_resp *)skb->data;
	struct ath10k_per_peer_tx_stats *p_tx_stats = &ar->peer_tx_stats;
	struct htt_per_peer_tx_stats_ind *tx_stats;
	struct ieee80211_sta *sta;
	struct ath10k_peer *peer;
	int peer_id, i;
	u8 ppdu_len, num_ppdu;

	num_ppdu = resp->peer_tx_stats.num_ppdu;
	ppdu_len = resp->peer_tx_stats.ppdu_len * sizeof(__le32);

	if (skb->len < sizeof(struct htt_resp_hdr) + num_ppdu * ppdu_len) {
		FUNC4(ar, "Invalid peer stats buf length %d\n", skb->len);
		return;
	}

	tx_stats = (struct htt_per_peer_tx_stats_ind *)
			(resp->peer_tx_stats.payload);
	peer_id = FUNC0(tx_stats->peer_id);

	FUNC5();
	FUNC7(&ar->data_lock);
	peer = FUNC2(ar, peer_id);
	if (!peer || !peer->sta) {
		FUNC4(ar, "Invalid peer id %d peer stats buffer\n",
			    peer_id);
		goto out;
	}

	sta = peer->sta;
	for (i = 0; i < num_ppdu; i++) {
		tx_stats = (struct htt_per_peer_tx_stats_ind *)
			   (resp->peer_tx_stats.payload + i * ppdu_len);

		p_tx_stats->succ_bytes = FUNC1(tx_stats->succ_bytes);
		p_tx_stats->retry_bytes = FUNC1(tx_stats->retry_bytes);
		p_tx_stats->failed_bytes =
				FUNC1(tx_stats->failed_bytes);
		p_tx_stats->ratecode = tx_stats->ratecode;
		p_tx_stats->flags = tx_stats->flags;
		p_tx_stats->succ_pkts = FUNC0(tx_stats->succ_pkts);
		p_tx_stats->retry_pkts = FUNC0(tx_stats->retry_pkts);
		p_tx_stats->failed_pkts = FUNC0(tx_stats->failed_pkts);
		p_tx_stats->duration = FUNC0(tx_stats->tx_duration);

		FUNC3(ar, sta, p_tx_stats);
	}

out:
	FUNC8(&ar->data_lock);
	FUNC6();
}