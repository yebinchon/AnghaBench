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
struct ice_vsi {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct ice_vsi *vsi)
{
	if (!FUNC4(__ICE_DOWN, vsi->state))
		FUNC0(vsi);

	FUNC1(vsi);
	FUNC3(vsi);
	FUNC2(vsi);
}