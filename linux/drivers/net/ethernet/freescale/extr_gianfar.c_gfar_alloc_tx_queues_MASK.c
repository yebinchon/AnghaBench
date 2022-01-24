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
struct gfar_private {int num_tx_queues; TYPE_1__** tx_queue; int /*<<< orphan*/  ndev; } ;
struct gfar_priv_tx_q {int dummy; } ;
struct TYPE_2__ {int qindex; int /*<<< orphan*/  txlock; int /*<<< orphan*/  dev; int /*<<< orphan*/ * tx_skbuff; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct gfar_private *priv)
{
	int i;

	for (i = 0; i < priv->num_tx_queues; i++) {
		priv->tx_queue[i] = FUNC0(sizeof(struct gfar_priv_tx_q),
					    GFP_KERNEL);
		if (!priv->tx_queue[i])
			return -ENOMEM;

		priv->tx_queue[i]->tx_skbuff = NULL;
		priv->tx_queue[i]->qindex = i;
		priv->tx_queue[i]->dev = priv->ndev;
		FUNC1(&(priv->tx_queue[i]->txlock));
	}
	return 0;
}