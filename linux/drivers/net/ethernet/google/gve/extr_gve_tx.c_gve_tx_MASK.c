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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct gve_tx_ring {int req; int /*<<< orphan*/  q_resources; int /*<<< orphan*/  netdev_txq; } ;
struct TYPE_3__ {size_t num_queues; } ;
struct gve_priv {TYPE_2__* pdev; struct gve_tx_ring* tx; TYPE_1__ tx_cfg; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gve_tx_ring*,struct sk_buff*) ; 
 int FUNC3 (struct gve_tx_ring*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*,int /*<<< orphan*/ ,int) ; 
 struct gve_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct gve_priv *priv = FUNC5(dev);
	struct gve_tx_ring *tx;
	int nsegs;

	FUNC0(FUNC9(skb) > priv->tx_cfg.num_queues,
	     "skb queue index out of range");
	tx = &priv->tx[FUNC9(skb)];
	if (FUNC11(FUNC2(tx, skb))) {
		/* We need to ring the txq doorbell -- we have stopped the Tx
		 * queue for want of resources, but prior calls to gve_tx()
		 * may have added descriptors without ringing the doorbell.
		 */

		/* Ensure tx descs from a prior gve_tx are visible before
		 * ringing doorbell.
		 */
		FUNC1();
		FUNC4(priv, tx->q_resources, tx->req);
		return NETDEV_TX_BUSY;
	}
	nsegs = FUNC3(tx, skb, &priv->pdev->dev);

	FUNC6(tx->netdev_txq, skb->len);
	FUNC10(skb);

	/* give packets to NIC */
	tx->req += nsegs;

	if (!FUNC8(tx->netdev_txq) && FUNC7())
		return NETDEV_TX_OK;

	/* Ensure tx descs are visible before ringing doorbell */
	FUNC1();
	FUNC4(priv, tx->q_resources, tx->req);
	return NETDEV_TX_OK;
}