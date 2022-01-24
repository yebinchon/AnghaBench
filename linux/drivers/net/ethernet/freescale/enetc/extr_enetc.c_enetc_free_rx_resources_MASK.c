#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct enetc_ndev_priv {int num_rx_rings; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct enetc_ndev_priv *priv)
{
	int i;

	for (i = 0; i < priv->num_rx_rings; i++)
		FUNC0(priv->rx_ring[i]);
}