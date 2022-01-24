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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct bcmgenet_priv {TYPE_1__* hw_params; int /*<<< orphan*/ * tx_rings; } ;
struct TYPE_3__ {unsigned int tx_queues; } ;

/* Variables and functions */
 size_t DESC_INDEX ; 
 int /*<<< orphan*/  INTRL2_CPU_MASK_CLEAR ; 
 int UMAC_IRQ_TXDMA_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct bcmgenet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcmgenet_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct bcmgenet_priv *priv = FUNC4(dev);
	u32 int0_enable = 0;
	u32 int1_enable = 0;
	unsigned int q;

	FUNC5(priv, tx_err, dev, "bcmgenet_timeout\n");

	for (q = 0; q < priv->hw_params->tx_queues; q++)
		FUNC0(&priv->tx_rings[q]);
	FUNC0(&priv->tx_rings[DESC_INDEX]);

	FUNC3(dev);

	for (q = 0; q < priv->hw_params->tx_queues; q++)
		int1_enable |= (1 << q);

	int0_enable = UMAC_IRQ_TXDMA_DONE;

	/* Re-enable TX interrupts if disabled */
	FUNC1(priv, int0_enable, INTRL2_CPU_MASK_CLEAR);
	FUNC2(priv, int1_enable, INTRL2_CPU_MASK_CLEAR);

	FUNC6(dev);

	dev->stats.tx_errors++;

	FUNC7(dev);
}