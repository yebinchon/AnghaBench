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
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {scalar_t__ last_rx_bd; struct arc_emac_bd* rxbd; int /*<<< orphan*/  txbd; scalar_t__ txbd_dirty; scalar_t__ txbd_curr; } ;
struct arc_emac_bd {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 unsigned int EMAC_BUFFER_SIZE ; 
 int EN_MASK ; 
 int ERR_MASK ; 
 unsigned int FOR_EMAC ; 
 int RXINT_MASK ; 
 int RX_BD_NUM ; 
 int /*<<< orphan*/  R_CTRL ; 
 int /*<<< orphan*/  R_ENABLE ; 
 int TXINT_MASK ; 
 int /*<<< orphan*/  TX_RING_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 struct arc_emac_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC8(ndev);
	struct net_device_stats *stats = &ndev->stats;
	int i;

	if (FUNC7())
		FUNC9(ndev, "restarting stalled EMAC\n");

	FUNC11(ndev);

	/* Disable interrupts */
	FUNC1(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);

	/* Disable EMAC */
	FUNC1(priv, R_CTRL, EN_MASK);

	/* Return the sk_buff to system */
	FUNC0(ndev);

	/* Clean Tx BD's */
	priv->txbd_curr = 0;
	priv->txbd_dirty = 0;
	FUNC6(priv->txbd, 0, TX_RING_SZ);

	for (i = 0; i < RX_BD_NUM; i++) {
		struct arc_emac_bd *rxbd = &priv->rxbd[i];
		unsigned int info = FUNC5(rxbd->info);

		if (!(info & FOR_EMAC)) {
			stats->rx_errors++;
			stats->rx_dropped++;
		}
		/* Return ownership to EMAC */
		rxbd->info = FUNC4(FOR_EMAC | EMAC_BUFFER_SIZE);
	}
	priv->last_rx_bd = 0;

	/* Make sure info is visible to EMAC before enable */
	FUNC12();

	/* Enable interrupts */
	FUNC3(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);

	/* Enable EMAC */
	FUNC2(priv, R_CTRL, EN_MASK);

	FUNC10(ndev);
}