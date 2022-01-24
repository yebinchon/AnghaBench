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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  wq; struct sk_buff* tx_skb; scalar_t__ tx_len; struct spi_device* spi; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct hi3110_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb,
					  struct net_device *net)
{
	struct hi3110_priv *priv = FUNC2(net);
	struct spi_device *spi = priv->spi;

	if (priv->tx_skb || priv->tx_len) {
		FUNC1(&spi->dev, "hard_xmit called while tx busy\n");
		return NETDEV_TX_BUSY;
	}

	if (FUNC0(net, skb))
		return NETDEV_TX_OK;

	FUNC3(net);
	priv->tx_skb = skb;
	FUNC4(priv->wq, &priv->tx_work);

	return NETDEV_TX_OK;
}