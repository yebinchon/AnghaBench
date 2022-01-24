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
struct i40e_vsi {scalar_t__ type; int num_queue_pairs; int /*<<< orphan*/ * rx_rings; int /*<<< orphan*/ * xdp_rings; int /*<<< orphan*/ * tx_rings; TYPE_1__* back; scalar_t__ netdev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED ; 
 scalar_t__ I40E_VSI_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(struct i40e_vsi *vsi)
{
	int i;

	/* It is assumed that the caller of this function
	 * sets the vsi->state __I40E_VSI_DOWN bit.
	 */
	if (vsi->netdev) {
		FUNC7(vsi->netdev);
		FUNC8(vsi->netdev);
	}
	FUNC5(vsi);
	FUNC6(vsi);
	if (vsi->type == I40E_VSI_MAIN &&
	    vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED)
		FUNC3(vsi->back, false);
	FUNC4(vsi);

	for (i = 0; i < vsi->num_queue_pairs; i++) {
		FUNC1(vsi->tx_rings[i]);
		if (FUNC2(vsi)) {
			/* Make sure that in-progress ndo_xdp_xmit
			 * calls are completed.
			 */
			FUNC9();
			FUNC1(vsi->xdp_rings[i]);
		}
		FUNC0(vsi->rx_rings[i]);
	}

}