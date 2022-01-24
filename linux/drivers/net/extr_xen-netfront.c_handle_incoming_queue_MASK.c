#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct netfront_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct netfront_queue {int /*<<< orphan*/  napi; TYPE_2__* info; } ;
struct TYPE_9__ {int pull_to; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
struct TYPE_7__ {TYPE_3__* netdev; int /*<<< orphan*/  rx_stats; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct netfront_stats* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct netfront_queue *queue,
				 struct sk_buff_head *rxq)
{
	struct netfront_stats *rx_stats = FUNC9(queue->info->rx_stats);
	int packets_dropped = 0;
	struct sk_buff *skb;

	while ((skb = FUNC2(rxq)) != NULL) {
		int pull_to = FUNC0(skb)->pull_to;

		if (pull_to > FUNC7(skb))
			FUNC1(skb, pull_to - FUNC7(skb));

		/* Ethernet work: Delayed to here as it peeks the header. */
		skb->protocol = FUNC4(skb, queue->info->netdev);
		FUNC8(skb);

		if (FUNC3(queue->info->netdev, skb)) {
			FUNC5(skb);
			packets_dropped++;
			queue->info->netdev->stats.rx_errors++;
			continue;
		}

		FUNC10(&rx_stats->syncp);
		rx_stats->packets++;
		rx_stats->bytes += skb->len;
		FUNC11(&rx_stats->syncp);

		/* Pass it up. */
		FUNC6(&queue->napi, skb);
	}

	return packets_dropped;
}