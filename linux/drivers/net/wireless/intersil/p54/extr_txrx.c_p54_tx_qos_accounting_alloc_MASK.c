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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct p54_tx_queue_stats {scalar_t__ len; scalar_t__ limit; int /*<<< orphan*/  count; } ;
struct p54_common {int /*<<< orphan*/  tx_stats_lock; int /*<<< orphan*/  hw; struct p54_tx_queue_stats* tx_stats; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (size_t const) ; 
 size_t P54_QUEUE_DATA ; 
 size_t const P54_QUEUE_NUM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct p54_common *priv,
				       struct sk_buff *skb,
				       const u16 p54_queue)
{
	struct p54_tx_queue_stats *queue;
	unsigned long flags;

	if (FUNC1(p54_queue >= P54_QUEUE_NUM))
		return -EINVAL;

	queue = &priv->tx_stats[p54_queue];

	FUNC3(&priv->tx_stats_lock, flags);
	if (FUNC5(queue->len >= queue->limit && FUNC0(p54_queue))) {
		FUNC4(&priv->tx_stats_lock, flags);
		return -ENOSPC;
	}

	queue->len++;
	queue->count++;

	if (FUNC5(queue->len == queue->limit && FUNC0(p54_queue))) {
		u16 ac_queue = p54_queue - P54_QUEUE_DATA;
		FUNC2(priv->hw, ac_queue);
	}

	FUNC4(&priv->tx_stats_lock, flags);
	return 0;
}