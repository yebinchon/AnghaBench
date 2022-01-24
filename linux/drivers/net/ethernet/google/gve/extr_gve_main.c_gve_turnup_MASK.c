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
struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {struct gve_notify_block* ntfy_blocks; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; int /*<<< orphan*/  dev; } ;
struct gve_notify_block {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*,struct gve_notify_block*) ; 
 int FUNC1 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int FUNC3 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gve_priv *priv)
{
	int idx;

	/* Start the tx queues */
	FUNC6(priv->dev);

	/* Enable napi and unmask interrupts for all queues */
	for (idx = 0; idx < priv->tx_cfg.num_queues; idx++) {
		int ntfy_idx = FUNC3(priv, idx);
		struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

		FUNC5(&block->napi);
		FUNC4(0, FUNC0(priv, block));
	}
	for (idx = 0; idx < priv->rx_cfg.num_queues; idx++) {
		int ntfy_idx = FUNC1(priv, idx);
		struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

		FUNC5(&block->napi);
		FUNC4(0, FUNC0(priv, block));
	}

	FUNC2(priv);
}