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
struct w5300_priv {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  S0_CR_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct w5300_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct w5300_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC4 (struct w5300_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct w5300_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *ndev)
{
	struct w5300_priv *priv = FUNC1(ndev);

	FUNC3(ndev);

	FUNC5(priv, skb->data, skb->len);
	ndev->stats.tx_packets++;
	ndev->stats.tx_bytes += skb->len;
	FUNC0(skb);
	FUNC2(priv, tx_queued, ndev, "tx queued\n");

	FUNC4(priv, S0_CR_SEND);

	return NETDEV_TX_OK;
}