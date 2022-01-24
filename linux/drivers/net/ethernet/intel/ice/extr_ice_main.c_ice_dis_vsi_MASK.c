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
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  __ICE_NEEDS_RESTART ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ice_vsi *vsi, bool locked)
{
	if (FUNC6(__ICE_DOWN, vsi->state))
		return;

	FUNC5(__ICE_NEEDS_RESTART, vsi->state);

	if (vsi->type == ICE_VSI_PF && vsi->netdev) {
		if (FUNC2(vsi->netdev)) {
			if (!locked)
				FUNC3();

			FUNC0(vsi->netdev);

			if (!locked)
				FUNC4();
		} else {
			FUNC1(vsi);
		}
	}
}