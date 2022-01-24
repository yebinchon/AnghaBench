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
struct i40e_vsi {TYPE_3__** xdp_rings; TYPE_2__** tx_rings; TYPE_1__** rx_rings; } ;
struct TYPE_6__ {int /*<<< orphan*/  stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i40e_vsi *vsi, int queue_pair)
{
	FUNC1(&vsi->rx_rings[queue_pair]->rx_stats, 0,
	       sizeof(vsi->rx_rings[queue_pair]->rx_stats));
	FUNC1(&vsi->tx_rings[queue_pair]->stats, 0,
	       sizeof(vsi->tx_rings[queue_pair]->stats));
	if (FUNC0(vsi)) {
		FUNC1(&vsi->xdp_rings[queue_pair]->stats, 0,
		       sizeof(vsi->xdp_rings[queue_pair]->stats));
	}
}