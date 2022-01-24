#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  qpl; } ;
struct gve_tx_ring {int q_num; int mask; int /*<<< orphan*/ * info; int /*<<< orphan*/ * desc; scalar_t__ bus; TYPE_2__ tx_fifo; int /*<<< orphan*/  netdev_txq; void* q_resources; scalar_t__ q_resources_bus; } ;
struct gve_priv {int tx_desc_cnt; int /*<<< orphan*/  dev; TYPE_1__* pdev; struct gve_tx_ring* tx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct device*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*,int) ; 
 scalar_t__ FUNC4 (struct gve_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct gve_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_tx_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gve_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct gve_priv *priv, int idx)
{
	struct gve_tx_ring *tx = &priv->tx[idx];
	struct device *hdev = &priv->pdev->dev;
	u32 slots = priv->tx_desc_cnt;
	size_t bytes;

	/* Make sure everything is zeroed to start */
	FUNC6(tx, 0, sizeof(*tx));
	tx->q_num = idx;

	tx->mask = slots - 1;

	/* alloc metadata */
	tx->info = FUNC10(sizeof(*tx->info) * slots);
	if (!tx->info)
		return -ENOMEM;

	/* alloc tx queue */
	bytes = sizeof(*tx->desc) * slots;
	tx->desc = FUNC0(hdev, bytes, &tx->bus, GFP_KERNEL);
	if (!tx->desc)
		goto abort_with_info;

	tx->tx_fifo.qpl = FUNC2(priv);

	/* map Tx FIFO */
	if (FUNC4(priv, &tx->tx_fifo))
		goto abort_with_desc;

	tx->q_resources =
		FUNC0(hdev,
				   sizeof(*tx->q_resources),
				   &tx->q_resources_bus,
				   GFP_KERNEL);
	if (!tx->q_resources)
		goto abort_with_fifo;

	FUNC8(priv, drv, priv->dev, "tx[%d]->bus=%lx\n", idx,
		  (unsigned long)tx->bus);
	tx->netdev_txq = FUNC7(priv->dev, idx);
	FUNC3(priv, idx);

	return 0;

abort_with_fifo:
	FUNC5(priv, &tx->tx_fifo);
abort_with_desc:
	FUNC1(hdev, bytes, tx->desc, tx->bus);
	tx->desc = NULL;
abort_with_info:
	FUNC9(tx->info);
	tx->info = NULL;
	return -ENOMEM;
}