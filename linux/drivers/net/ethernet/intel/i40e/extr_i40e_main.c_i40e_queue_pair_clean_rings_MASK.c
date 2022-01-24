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
struct i40e_vsi {int /*<<< orphan*/ * rx_rings; int /*<<< orphan*/ * xdp_rings; int /*<<< orphan*/ * tx_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct i40e_vsi *vsi, int queue_pair)
{
	FUNC1(vsi->tx_rings[queue_pair]);
	if (FUNC2(vsi)) {
		/* Make sure that in-progress ndo_xdp_xmit calls are
		 * completed.
		 */
		FUNC3();
		FUNC1(vsi->xdp_rings[queue_pair]);
	}
	FUNC0(vsi->rx_rings[queue_pair]);
}