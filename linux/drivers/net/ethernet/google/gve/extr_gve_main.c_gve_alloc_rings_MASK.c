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
struct TYPE_5__ {int num_queues; } ;
struct TYPE_4__ {int num_queues; } ;
struct gve_priv {TYPE_3__* tx; TYPE_3__* rx; TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  statss; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gve_priv*,int) ; 
 int FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*,int) ; 
 int FUNC3 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*) ; 
 int FUNC5 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct gve_priv *priv)
{
	int ntfy_idx;
	int err;
	int i;

	/* Setup tx rings */
	priv->tx = FUNC7(priv->tx_cfg.num_queues * sizeof(*priv->tx),
			    GFP_KERNEL);
	if (!priv->tx)
		return -ENOMEM;
	err = FUNC3(priv);
	if (err)
		goto free_tx;
	/* Setup rx rings */
	priv->rx = FUNC7(priv->rx_cfg.num_queues * sizeof(*priv->rx),
			    GFP_KERNEL);
	if (!priv->rx) {
		err = -ENOMEM;
		goto free_tx_queue;
	}
	err = FUNC1(priv);
	if (err)
		goto free_rx;
	/* Add tx napi & init sync stats*/
	for (i = 0; i < priv->tx_cfg.num_queues; i++) {
		FUNC8(&priv->tx[i].statss);
		ntfy_idx = FUNC5(priv, i);
		FUNC0(priv, ntfy_idx);
	}
	/* Add rx napi  & init sync stats*/
	for (i = 0; i < priv->rx_cfg.num_queues; i++) {
		FUNC8(&priv->rx[i].statss);
		ntfy_idx = FUNC2(priv, i);
		FUNC0(priv, ntfy_idx);
	}

	return 0;

free_rx:
	FUNC6(priv->rx);
	priv->rx = NULL;
free_tx_queue:
	FUNC4(priv);
free_tx:
	FUNC6(priv->tx);
	priv->tx = NULL;
	return err;
}