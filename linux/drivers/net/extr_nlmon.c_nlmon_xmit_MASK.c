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
struct sk_buff {int len; } ;
struct pcpu_lstats {int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; } ;
struct net_device {int /*<<< orphan*/  lstats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct pcpu_lstats* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	int len = skb->len;
	struct pcpu_lstats *stats = FUNC1(dev->lstats);

	FUNC2(&stats->syncp);
	stats->bytes += len;
	stats->packets++;
	FUNC3(&stats->syncp);

	FUNC0(skb);

	return NETDEV_TX_OK;
}