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
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct moxart_mac_priv_t {unsigned int tx_head; unsigned int tx_tail; TYPE_2__** tx_skb; int /*<<< orphan*/ * tx_len; int /*<<< orphan*/ * tx_mapping; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ TX_WAKE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct moxart_mac_priv_t* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC4(ndev);
	unsigned int tx_head = priv->tx_head;
	unsigned int tx_tail = priv->tx_tail;

	while (tx_tail != tx_head) {
		FUNC2(&ndev->dev, priv->tx_mapping[tx_tail],
				 priv->tx_len[tx_tail], DMA_TO_DEVICE);

		ndev->stats.tx_packets++;
		ndev->stats.tx_bytes += priv->tx_skb[tx_tail]->len;

		FUNC1(priv->tx_skb[tx_tail]);
		priv->tx_skb[tx_tail] = NULL;

		tx_tail = FUNC0(tx_tail);
	}
	priv->tx_tail = tx_tail;
	if (FUNC5(ndev) &&
	    FUNC3(ndev) >= TX_WAKE_THRESHOLD)
		FUNC6(ndev);
}