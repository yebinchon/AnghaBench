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
struct i40e_ring {size_t queue_index; TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_ring** xdp_rings; } ;

/* Variables and functions */
 unsigned int I40E_XDP_REDIR ; 
 unsigned int I40E_XDP_TX ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct i40e_ring *rx_ring, unsigned int xdp_res)
{
	if (xdp_res & I40E_XDP_REDIR)
		FUNC1();

	if (xdp_res & I40E_XDP_TX) {
		struct i40e_ring *xdp_ring =
			rx_ring->vsi->xdp_rings[rx_ring->queue_index];

		FUNC0(xdp_ring);
	}
}