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
struct i40e_vsi {scalar_t__ current_netdev_flags; int /*<<< orphan*/  state; struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_CLIENT_RESET ; 
 int /*<<< orphan*/  __I40E_CLIENT_SERVICE_REQUESTED ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	if (!FUNC5(__I40E_VSI_DOWN, vsi->state))
		FUNC0(vsi);
	FUNC1(vsi);
	FUNC3(vsi);
	FUNC2(vsi);
	vsi->current_netdev_flags = 0;
	FUNC4(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
	if (FUNC6(__I40E_RESET_RECOVERY_PENDING, pf->state))
		FUNC4(__I40E_CLIENT_RESET, pf->state);
}