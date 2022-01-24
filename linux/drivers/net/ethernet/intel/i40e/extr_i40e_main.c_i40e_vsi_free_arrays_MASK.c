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
struct i40e_vsi {int /*<<< orphan*/ * xdp_rings; int /*<<< orphan*/ * rx_rings; int /*<<< orphan*/ * tx_rings; int /*<<< orphan*/ * q_vectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct i40e_vsi *vsi, bool free_qvectors)
{
	/* free the ring and vector containers */
	if (free_qvectors) {
		FUNC0(vsi->q_vectors);
		vsi->q_vectors = NULL;
	}
	FUNC0(vsi->tx_rings);
	vsi->tx_rings = NULL;
	vsi->rx_rings = NULL;
	vsi->xdp_rings = NULL;
}