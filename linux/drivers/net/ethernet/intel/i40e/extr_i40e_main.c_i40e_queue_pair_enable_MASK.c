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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vsi*,int,int) ; 
 int FUNC6 (struct i40e_vsi*,int,int) ; 

int FUNC7(struct i40e_vsi *vsi, int queue_pair)
{
	int err;

	err = FUNC1(vsi->tx_rings[queue_pair]);
	if (err)
		return err;

	if (FUNC2(vsi)) {
		err = FUNC1(vsi->xdp_rings[queue_pair]);
		if (err)
			return err;
	}

	err = FUNC0(vsi->rx_rings[queue_pair]);
	if (err)
		return err;

	err = FUNC6(vsi, queue_pair, true /* on */);
	FUNC5(vsi, queue_pair, true /* on */);
	FUNC4(vsi, queue_pair);

	FUNC3(vsi);

	return err;
}