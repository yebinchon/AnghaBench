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
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct ftmac100_txdes {int dummy; } ;
struct ftmac100 {scalar_t__ tx_pending; int /*<<< orphan*/  tx_lock; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ TX_QUEUE_ENTRIES ; 
 struct ftmac100_txdes* FUNC0 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftmac100_txdes*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100_txdes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC5 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC6 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC7 (struct ftmac100_txdes*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ftmac100_txdes*) ; 
 int /*<<< orphan*/  FUNC9 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct ftmac100 *priv, struct sk_buff *skb,
				 dma_addr_t map)
{
	struct net_device *netdev = priv->netdev;
	struct ftmac100_txdes *txdes;
	unsigned int len = (skb->len < ETH_ZLEN) ? ETH_ZLEN : skb->len;

	txdes = FUNC0(priv);
	FUNC1(priv);

	/* setup TX descriptor */
	FUNC7(txdes, skb);
	FUNC3(txdes, map);

	FUNC5(txdes);
	FUNC6(txdes);
	FUNC8(txdes);
	FUNC2(txdes, len);

	FUNC11(&priv->tx_lock);
	priv->tx_pending++;
	if (priv->tx_pending == TX_QUEUE_ENTRIES)
		FUNC10(netdev);

	/* start transmit */
	FUNC4(txdes);
	FUNC12(&priv->tx_lock);

	FUNC9(priv);
	return NETDEV_TX_OK;
}