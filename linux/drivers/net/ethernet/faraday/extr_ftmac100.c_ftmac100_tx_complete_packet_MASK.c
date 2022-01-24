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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_aborted_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_txdes {int dummy; } ;
struct ftmac100 {scalar_t__ tx_pending; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  dev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftmac100_txdes* FUNC2 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100*) ; 
 scalar_t__ FUNC4 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC5 (struct ftmac100_txdes*) ; 
 struct sk_buff* FUNC6 (struct ftmac100_txdes*) ; 
 scalar_t__ FUNC7 (struct ftmac100_txdes*) ; 
 scalar_t__ FUNC8 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC9 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static bool FUNC15(struct ftmac100 *priv)
{
	struct net_device *netdev = priv->netdev;
	struct ftmac100_txdes *txdes;
	struct sk_buff *skb;
	dma_addr_t map;

	if (priv->tx_pending == 0)
		return false;

	txdes = FUNC2(priv);

	if (FUNC8(txdes))
		return false;

	skb = FUNC6(txdes);
	map = FUNC5(txdes);

	if (FUNC14(FUNC4(txdes) ||
		     FUNC7(txdes))) {
		/*
		 * packet transmitted to ethernet lost due to late collision
		 * or excessive collision
		 */
		netdev->stats.tx_aborted_errors++;
	} else {
		netdev->stats.tx_packets++;
		netdev->stats.tx_bytes += skb->len;
	}

	FUNC1(priv->dev, map, FUNC11(skb), DMA_TO_DEVICE);
	FUNC0(skb);

	FUNC9(txdes);

	FUNC3(priv);

	FUNC12(&priv->tx_lock);
	priv->tx_pending--;
	FUNC13(&priv->tx_lock);
	FUNC10(netdev);

	return true;
}