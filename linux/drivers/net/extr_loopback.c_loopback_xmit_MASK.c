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
struct sk_buff {int len; int /*<<< orphan*/  protocol; scalar_t__ tstamp; } ;
struct pcpu_lstats {int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; } ;
struct net_device {int /*<<< orphan*/  lstats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct pcpu_lstats* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
				 struct net_device *dev)
{
	struct pcpu_lstats *lb_stats;
	int len;

	FUNC5(skb);

	/* do not fool net_timestamp_check() with various clock bases */
	skb->tstamp = 0;

	FUNC4(skb);

	/* Before queueing this packet to netif_rx(),
	 * make sure dst is refcounted.
	 */
	FUNC3(skb);

	skb->protocol = FUNC0(skb, dev);

	/* it's OK to use per_cpu_ptr() because BHs are off */
	lb_stats = FUNC6(dev->lstats);

	len = skb->len;
	if (FUNC1(FUNC2(skb) == NET_RX_SUCCESS)) {
		FUNC7(&lb_stats->syncp);
		lb_stats->bytes += len;
		lb_stats->packets++;
		FUNC8(&lb_stats->syncp);
	}

	return NETDEV_TX_OK;
}