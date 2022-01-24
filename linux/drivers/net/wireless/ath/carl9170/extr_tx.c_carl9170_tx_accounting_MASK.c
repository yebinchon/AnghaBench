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
struct sk_buff {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  tx_stats_lock; int /*<<< orphan*/ * queue_stop_timeout; TYPE_2__* hw; TYPE_1__* tx_stats; int /*<<< orphan*/  tx_total_queued; } ;
struct TYPE_4__ {int queues; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ limit; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ar9170 *ar, struct sk_buff *skb)
{
	int queue, i;
	bool mem_full;

	FUNC0(&ar->tx_total_queued);

	queue = FUNC3(skb);
	FUNC4(&ar->tx_stats_lock);

	/*
	 * The driver has to accept the frame, regardless if the queue is
	 * full to the brim, or not. We have to do the queuing internally,
	 * since mac80211 assumes that a driver which can operate with
	 * aggregated frames does not reject frames for this reason.
	 */
	ar->tx_stats[queue].len++;
	ar->tx_stats[queue].count++;

	mem_full = FUNC2(ar);
	for (i = 0; i < ar->hw->queues; i++) {
		if (mem_full || ar->tx_stats[i].len >= ar->tx_stats[i].limit) {
			FUNC1(ar->hw, i);
			ar->queue_stop_timeout[i] = jiffies;
		}
	}

	FUNC5(&ar->tx_stats_lock);
}