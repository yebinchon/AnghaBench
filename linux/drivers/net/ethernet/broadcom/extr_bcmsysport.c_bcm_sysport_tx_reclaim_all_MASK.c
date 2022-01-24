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
struct bcm_sysport_priv {int /*<<< orphan*/ * tx_rings; TYPE_1__* netdev; } ;
struct TYPE_2__ {unsigned int num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct bcm_sysport_priv *priv)
{
	unsigned int q;

	for (q = 0; q < priv->netdev->num_tx_queues; q++)
		FUNC0(priv, &priv->tx_rings[q]);
}