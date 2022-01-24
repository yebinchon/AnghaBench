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
struct ice_vsi {scalar_t__ type; scalar_t__ netdev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ ICE_VSI_PF ; 
 int /*<<< orphan*/  __ICE_NEEDS_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ice_vsi *vsi, bool locked)
{
	int err = 0;

	if (!FUNC5(__ICE_NEEDS_RESTART, vsi->state))
		return 0;

	FUNC0(__ICE_NEEDS_RESTART, vsi->state);

	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
		if (FUNC2(vsi->netdev)) {
			if (!locked)
				FUNC3();

			err = FUNC1(vsi->netdev);

			if (!locked)
				FUNC4();
		}
	}

	return err;
}