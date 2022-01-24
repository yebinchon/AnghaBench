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
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int /*<<< orphan*/  lock; TYPE_2__* tx_skb; struct net_device* ndev; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EIR ; 
 int TXABTIF ; 
 int TXIF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  tx_done ; 

__attribute__((used)) static void FUNC7(struct encx24j600_priv *priv, bool err)
{
	struct net_device *dev = priv->ndev;

	if (!priv->tx_skb) {
		FUNC0();
		return;
	}

	FUNC3(&priv->lock);

	if (err)
		dev->stats.tx_errors++;
	else
		dev->stats.tx_packets++;

	dev->stats.tx_bytes += priv->tx_skb->len;

	FUNC2(priv, EIR, TXIF | TXABTIF);

	FUNC5(priv, tx_done, dev, "TX Done%s\n", err ? ": Err" : "");

	FUNC1(priv->tx_skb);
	priv->tx_skb = NULL;

	FUNC6(dev);

	FUNC4(&priv->lock);
}