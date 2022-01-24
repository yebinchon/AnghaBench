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
struct w5100_priv {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  xfer_wq; struct sk_buff* tx_skb; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct w5100_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *ndev)
{
	struct w5100_priv *priv = FUNC1(ndev);

	FUNC2(ndev);

	if (priv->ops->may_sleep) {
		FUNC0(priv->tx_skb);
		priv->tx_skb = skb;
		FUNC3(priv->xfer_wq, &priv->tx_work);
	} else {
		FUNC4(ndev, skb);
	}

	return NETDEV_TX_OK;
}