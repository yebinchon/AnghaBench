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
struct tx_traffic_info {scalar_t__ start_time; scalar_t__ pkts; } ;
struct mwl8k_sta {struct tx_traffic_info* tx_stats; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HZ ; 
 size_t MWL8K_MAX_TID ; 
 struct mwl8k_sta* FUNC1 (struct ieee80211_sta*) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static inline void FUNC2(struct ieee80211_sta *sta, u8 tid)
{
	struct mwl8k_sta *sta_info = FUNC1(sta);
	struct tx_traffic_info *tx_stats;

	FUNC0(tid >= MWL8K_MAX_TID);
	tx_stats = &sta_info->tx_stats[tid];

	if (tx_stats->start_time == 0)
		tx_stats->start_time = jiffies;

	/* reset the packet count after each second elapses.  If the number of
	 * packets ever exceeds the ampdu_min_traffic threshold, we will allow
	 * an ampdu stream to be started.
	 */
	if (jiffies - tx_stats->start_time > HZ) {
		tx_stats->pkts = 0;
		tx_stats->start_time = 0;
	} else
		tx_stats->pkts++;
}