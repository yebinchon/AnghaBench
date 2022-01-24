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
struct TYPE_3__ {int num_queues; } ;
struct TYPE_4__ {int num_queues; } ;
struct gve_priv {int /*<<< orphan*/ * rx; TYPE_1__ rx_cfg; int /*<<< orphan*/ * tx; TYPE_2__ tx_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 
 int FUNC4 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gve_priv *priv)
{
	int ntfy_idx;
	int i;

	if (priv->tx) {
		for (i = 0; i < priv->tx_cfg.num_queues; i++) {
			ntfy_idx = FUNC4(priv, i);
			FUNC0(priv, ntfy_idx);
		}
		FUNC3(priv);
		FUNC5(priv->tx);
		priv->tx = NULL;
	}
	if (priv->rx) {
		for (i = 0; i < priv->rx_cfg.num_queues; i++) {
			ntfy_idx = FUNC2(priv, i);
			FUNC0(priv, ntfy_idx);
		}
		FUNC1(priv);
		FUNC5(priv->rx);
		priv->rx = NULL;
	}
}