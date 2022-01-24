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
struct gve_priv {int /*<<< orphan*/  dev; struct gve_notify_block* ntfy_blocks; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct gve_notify_block {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*,int) ; 
 int FUNC3 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gve_priv *priv)
{
	int idx;

	if (FUNC6(priv->dev))
		FUNC5(priv->dev);

	if (!FUNC1(priv))
		return;

	/* Disable napi to prevent more work from coming in */
	for (idx = 0; idx < priv->tx_cfg.num_queues; idx++) {
		int ntfy_idx = FUNC3(priv, idx);
		struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

		FUNC4(&block->napi);
	}
	for (idx = 0; idx < priv->rx_cfg.num_queues; idx++) {
		int ntfy_idx = FUNC2(priv, idx);
		struct gve_notify_block *block = &priv->ntfy_blocks[ntfy_idx];

		FUNC4(&block->napi);
	}

	/* Stop tx queues */
	FUNC7(priv->dev);

	FUNC0(priv);
}