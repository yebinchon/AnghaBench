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
typedef  int u32 ;
struct TYPE_6__ {TYPE_2__* qpl; } ;
struct gve_tx_ring {int mask; int /*<<< orphan*/ * info; int /*<<< orphan*/ * desc; int /*<<< orphan*/  bus; TYPE_3__ tx_fifo; int /*<<< orphan*/ * q_resources; int /*<<< orphan*/  q_resources_bus; int /*<<< orphan*/  netdev_txq; int /*<<< orphan*/  req; } ;
struct gve_priv {int /*<<< orphan*/  dev; TYPE_1__* pdev; struct gve_tx_ring* tx; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*,struct gve_tx_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct gve_priv *priv, int idx)
{
	struct gve_tx_ring *tx = &priv->tx[idx];
	struct device *hdev = &priv->pdev->dev;
	size_t bytes;
	u32 slots;

	FUNC3(priv, idx);
	slots = tx->mask + 1;
	FUNC1(priv, tx, tx->req, false);
	FUNC5(tx->netdev_txq);

	FUNC0(hdev, sizeof(*tx->q_resources),
			  tx->q_resources, tx->q_resources_bus);
	tx->q_resources = NULL;

	FUNC2(priv, &tx->tx_fifo);
	FUNC4(priv, tx->tx_fifo.qpl->id);
	tx->tx_fifo.qpl = NULL;

	bytes = sizeof(*tx->desc) * slots;
	FUNC0(hdev, bytes, tx->desc, tx->bus);
	tx->desc = NULL;

	FUNC7(tx->info);
	tx->info = NULL;

	FUNC6(priv, drv, priv->dev, "freed tx queue %d\n", idx);
}