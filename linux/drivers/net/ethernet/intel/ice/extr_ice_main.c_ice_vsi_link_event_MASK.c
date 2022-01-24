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
struct ice_vsi {scalar_t__ type; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ ICE_VSI_PF ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ice_vsi *vsi, bool link_up)
{
	if (!vsi)
		return;

	if (FUNC5(__ICE_DOWN, vsi->state) || !vsi->netdev)
		return;

	if (vsi->type == ICE_VSI_PF) {
		if (link_up == FUNC1(vsi->netdev))
			return;

		if (link_up) {
			FUNC2(vsi->netdev);
			FUNC4(vsi->netdev);
		} else {
			FUNC0(vsi->netdev);
			FUNC3(vsi->netdev);
		}
	}
}