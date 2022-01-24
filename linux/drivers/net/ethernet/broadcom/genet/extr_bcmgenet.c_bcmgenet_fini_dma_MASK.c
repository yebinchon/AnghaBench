#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct netdev_queue {int dummy; } ;
struct bcmgenet_priv {int num_tx_bds; scalar_t__ tx_cbs; scalar_t__ rx_cbs; TYPE_3__* tx_rings; int /*<<< orphan*/  dev; TYPE_2__* hw_params; TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int tx_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t DESC_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct netdev_queue* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 

__attribute__((used)) static void FUNC8(struct bcmgenet_priv *priv)
{
	struct netdev_queue *txq;
	int i;

	FUNC0(priv);
	FUNC1(priv);

	for (i = 0; i < priv->num_tx_bds; i++)
		FUNC4(FUNC3(&priv->pdev->dev,
						  priv->tx_cbs + i));

	for (i = 0; i < priv->hw_params->tx_queues; i++) {
		txq = FUNC6(priv->dev, priv->tx_rings[i].queue);
		FUNC7(txq);
	}

	txq = FUNC6(priv->dev, priv->tx_rings[DESC_INDEX].queue);
	FUNC7(txq);

	FUNC2(priv);
	FUNC5(priv->rx_cbs);
	FUNC5(priv->tx_cbs);
}