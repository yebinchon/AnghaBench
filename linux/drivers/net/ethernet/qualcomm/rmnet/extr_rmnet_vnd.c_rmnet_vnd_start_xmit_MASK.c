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
struct rmnet_priv {TYPE_2__* pcpu_stats; scalar_t__ real_dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  tx_drops; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct rmnet_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb,
					struct net_device *dev)
{
	struct rmnet_priv *priv;

	priv = FUNC1(dev);
	if (priv->real_dev) {
		FUNC2(skb);
	} else {
		FUNC3(priv->pcpu_stats->stats.tx_drops);
		FUNC0(skb);
	}
	return NETDEV_TX_OK;
}