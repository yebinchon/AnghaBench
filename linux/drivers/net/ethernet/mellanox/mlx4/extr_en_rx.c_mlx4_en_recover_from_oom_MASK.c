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
struct mlx4_en_priv {int rx_ring_num; TYPE_1__** rx_cq; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  port_up; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx4_en_priv *priv)
{
	int ring;

	if (!priv->port_up)
		return;

	for (ring = 0; ring < priv->rx_ring_num; ring++) {
		if (FUNC2(priv->rx_ring[ring])) {
			FUNC0();
			FUNC3(&priv->rx_cq[ring]->napi);
			FUNC1();
		}
	}
}