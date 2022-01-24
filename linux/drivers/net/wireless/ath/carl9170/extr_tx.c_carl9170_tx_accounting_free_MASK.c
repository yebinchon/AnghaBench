#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ar9170 {unsigned long* queue_stop_timeout; unsigned long* max_queue_stop_timeout; int /*<<< orphan*/  tx_flush; int /*<<< orphan*/  tx_total_queued; int /*<<< orphan*/  tx_stats_lock; TYPE_2__* hw; TYPE_1__* tx_stats; } ;
struct TYPE_5__ {unsigned int queues; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ CARL9170_NUM_TX_LIMIT_SOFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 unsigned long jiffies ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ar9170 *ar, struct sk_buff *skb)
{
	int queue;

	queue = FUNC5(skb);

	FUNC6(&ar->tx_stats_lock);

	ar->tx_stats[queue].len--;

	if (!FUNC4(ar)) {
		unsigned int i;
		for (i = 0; i < ar->hw->queues; i++) {
			if (ar->tx_stats[i].len >= CARL9170_NUM_TX_LIMIT_SOFT)
				continue;

			if (FUNC2(ar->hw, i)) {
				unsigned long tmp;

				tmp = jiffies - ar->queue_stop_timeout[i];
				if (tmp > ar->max_queue_stop_timeout[i])
					ar->max_queue_stop_timeout[i] = tmp;
			}

			FUNC3(ar->hw, i);
		}
	}

	FUNC7(&ar->tx_stats_lock);

	if (FUNC0(&ar->tx_total_queued))
		FUNC1(&ar->tx_flush);
}