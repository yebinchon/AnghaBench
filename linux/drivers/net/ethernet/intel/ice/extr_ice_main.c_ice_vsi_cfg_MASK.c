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
struct ice_vsi {scalar_t__ netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int FUNC2 (struct ice_vsi*) ; 
 int FUNC3 (struct ice_vsi*) ; 
 int FUNC4 (struct ice_vsi*) ; 

int FUNC5(struct ice_vsi *vsi)
{
	int err;

	if (vsi->netdev) {
		FUNC0(vsi->netdev);

		err = FUNC4(vsi);

		if (err)
			return err;
	}
	FUNC1(vsi);

	err = FUNC2(vsi);
	if (!err)
		err = FUNC3(vsi);

	return err;
}