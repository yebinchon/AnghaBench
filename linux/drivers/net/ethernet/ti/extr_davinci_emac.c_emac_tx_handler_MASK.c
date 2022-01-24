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
struct sk_buff {struct net_device* dev; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *token, int len, int status)
{
	struct sk_buff		*skb = token;
	struct net_device	*ndev = skb->dev;

	/* Check whether the queue is stopped due to stalled tx dma, if the
	 * queue is stopped then start the queue as we have free desc for tx
	 */
	if (FUNC3(FUNC1(ndev)))
		FUNC2(ndev);
	ndev->stats.tx_packets++;
	ndev->stats.tx_bytes += len;
	FUNC0(skb);
}