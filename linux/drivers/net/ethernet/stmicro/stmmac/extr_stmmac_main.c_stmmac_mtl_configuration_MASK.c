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
typedef  int u32 ;
struct stmmac_priv {TYPE_1__* plat; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int rx_queues_to_use; int tx_queues_to_use; int /*<<< orphan*/  tx_sched_algorithm; int /*<<< orphan*/  rx_sched_algorithm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct stmmac_priv*) ; 

__attribute__((used)) static void FUNC10(struct stmmac_priv *priv)
{
	u32 rx_queues_count = priv->plat->rx_queues_to_use;
	u32 tx_queues_count = priv->plat->tx_queues_to_use;

	if (tx_queues_count > 1)
		FUNC9(priv);

	/* Configure MTL RX algorithms */
	if (rx_queues_count > 1)
		FUNC6(priv, priv->hw,
				priv->plat->rx_sched_algorithm);

	/* Configure MTL TX algorithms */
	if (tx_queues_count > 1)
		FUNC7(priv, priv->hw,
				priv->plat->tx_sched_algorithm);

	/* Configure CBS in AVB TX queues */
	if (tx_queues_count > 1)
		FUNC0(priv);

	/* Map RX MTL to DMA channels */
	FUNC8(priv);

	/* Enable MAC RX Queues */
	FUNC5(priv);

	/* Set RX priorities */
	if (rx_queues_count > 1)
		FUNC2(priv);

	/* Set TX priorities */
	if (tx_queues_count > 1)
		FUNC4(priv);

	/* Set RX routing */
	if (rx_queues_count > 1)
		FUNC3(priv);

	/* Receive Side Scaling */
	if (rx_queues_count > 1)
		FUNC1(priv);
}