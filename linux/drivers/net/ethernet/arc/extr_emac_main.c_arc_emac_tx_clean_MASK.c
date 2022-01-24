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
struct sk_buff {scalar_t__ len; } ;
struct net_device_stats {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  dev; struct net_device_stats stats; } ;
struct buffer_state {struct sk_buff* skb; } ;
struct arc_emac_priv {unsigned int txbd_dirty; struct buffer_state* tx_buff; struct arc_emac_bd* txbd; } ;
struct arc_emac_bd {int /*<<< orphan*/  info; scalar_t__ data; } ;

/* Variables and functions */
 unsigned int DEFR ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int DROP ; 
 unsigned int FIRST_OR_LAST_MASK ; 
 unsigned int FOR_EMAC ; 
 unsigned int LTCL ; 
 unsigned int TX_BD_NUM ; 
 unsigned int UFLO ; 
 int /*<<< orphan*/  addr ; 
 scalar_t__ FUNC0 (struct arc_emac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 struct arc_emac_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (unsigned int) ; 

__attribute__((used)) static void FUNC12(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC7(ndev);
	struct net_device_stats *stats = &ndev->stats;
	unsigned int i;

	for (i = 0; i < TX_BD_NUM; i++) {
		unsigned int *txbd_dirty = &priv->txbd_dirty;
		struct arc_emac_bd *txbd = &priv->txbd[*txbd_dirty];
		struct buffer_state *tx_buff = &priv->tx_buff[*txbd_dirty];
		struct sk_buff *skb = tx_buff->skb;
		unsigned int info = FUNC5(txbd->info);

		if ((info & FOR_EMAC) || !txbd->data || !skb)
			break;

		if (FUNC11(info & (DROP | DEFR | LTCL | UFLO))) {
			stats->tx_errors++;
			stats->tx_dropped++;

			if (info & DEFR)
				stats->tx_carrier_errors++;

			if (info & LTCL)
				stats->collisions++;

			if (info & UFLO)
				stats->tx_fifo_errors++;
		} else if (FUNC6(info & FIRST_OR_LAST_MASK)) {
			stats->tx_packets++;
			stats->tx_bytes += skb->len;
		}

		FUNC4(&ndev->dev, FUNC2(tx_buff, addr),
				 FUNC3(tx_buff, len), DMA_TO_DEVICE);

		/* return the sk_buff to system */
		FUNC1(skb);

		txbd->data = 0;
		txbd->info = 0;
		tx_buff->skb = NULL;

		*txbd_dirty = (*txbd_dirty + 1) % TX_BD_NUM;
	}

	/* Ensure that txbd_dirty is visible to tx() before checking
	 * for queue stopped.
	 */
	FUNC10();

	if (FUNC8(ndev) && FUNC0(priv))
		FUNC9(ndev);
}