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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_rx_status {int /*<<< orphan*/  freq; int /*<<< orphan*/  band; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; int /*<<< orphan*/  band; } ;
struct htt_rx_desc {int dummy; } ;
struct ath10k {int /*<<< orphan*/  data_lock; struct ieee80211_channel* tgt_oper_chan; struct ieee80211_channel* rx_channel; struct ieee80211_channel* scan_channel; } ;

/* Variables and functions */
 struct ieee80211_channel* FUNC0 (struct ath10k*) ; 
 struct ieee80211_channel* FUNC1 (struct ath10k*,struct htt_rx_desc*) ; 
 struct ieee80211_channel* FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct ath10k *ar,
				    struct ieee80211_rx_status *status,
				    struct htt_rx_desc *rxd,
				    u32 vdev_id)
{
	struct ieee80211_channel *ch;

	FUNC3(&ar->data_lock);
	ch = ar->scan_channel;
	if (!ch)
		ch = ar->rx_channel;
	if (!ch)
		ch = FUNC1(ar, rxd);
	if (!ch)
		ch = FUNC2(ar, vdev_id);
	if (!ch)
		ch = FUNC0(ar);
	if (!ch)
		ch = ar->tgt_oper_chan;
	FUNC4(&ar->data_lock);

	if (!ch)
		return false;

	status->band = ch->band;
	status->freq = ch->center_freq;

	return true;
}