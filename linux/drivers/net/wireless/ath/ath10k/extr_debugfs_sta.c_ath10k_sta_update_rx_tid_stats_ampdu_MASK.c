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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct htt_rx_indication_mpdu_range {int /*<<< orphan*/  mpdu_count; } ;
struct ath10k_sta {int /*<<< orphan*/ * tid_stats; } ;
struct ath10k_peer {TYPE_1__* sta; } ;
struct ath10k {int sta_tid_stats_mask; int /*<<< orphan*/  data_lock; } ;
struct TYPE_2__ {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 size_t IEEE80211_NUM_TIDS ; 
 struct ath10k_peer* FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ath10k *ar, u16 peer_id, u8 tid,
					  struct htt_rx_indication_mpdu_range *ranges,
					  int num_ranges)
{
	struct ath10k_sta *arsta;
	struct ath10k_peer *peer;
	int i;

	if (tid > IEEE80211_NUM_TIDS || !(ar->sta_tid_stats_mask & FUNC0(tid)))
		return;

	FUNC3();
	FUNC5(&ar->data_lock);

	peer = FUNC1(ar, peer_id);
	if (!peer || !peer->sta)
		goto out;

	arsta = (struct ath10k_sta *)peer->sta->drv_priv;

	for (i = 0; i < num_ranges; i++)
		FUNC2(ar,
						    &arsta->tid_stats[tid],
						    ranges[i].mpdu_count);

out:
	FUNC6(&ar->data_lock);
	FUNC4();
}