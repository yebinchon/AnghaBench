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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I40E_CONFIG_BUSY ; 
 int /*<<< orphan*/  __I40E_CORE_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_DOWN ; 
 int /*<<< orphan*/  __I40E_DOWN_REQUESTED ; 
 int /*<<< orphan*/  __I40E_GLOBAL_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_PF_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_REINIT_REQUESTED ; 
 int /*<<< orphan*/  __I40E_RESET_INTR_RECEIVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct i40e_pf *pf)
{
	u32 reset_flags = 0;

	if (FUNC6(__I40E_REINIT_REQUESTED, pf->state)) {
		reset_flags |= FUNC0(__I40E_REINIT_REQUESTED);
		FUNC1(__I40E_REINIT_REQUESTED, pf->state);
	}
	if (FUNC6(__I40E_PF_RESET_REQUESTED, pf->state)) {
		reset_flags |= FUNC0(__I40E_PF_RESET_REQUESTED);
		FUNC1(__I40E_PF_RESET_REQUESTED, pf->state);
	}
	if (FUNC6(__I40E_CORE_RESET_REQUESTED, pf->state)) {
		reset_flags |= FUNC0(__I40E_CORE_RESET_REQUESTED);
		FUNC1(__I40E_CORE_RESET_REQUESTED, pf->state);
	}
	if (FUNC6(__I40E_GLOBAL_RESET_REQUESTED, pf->state)) {
		reset_flags |= FUNC0(__I40E_GLOBAL_RESET_REQUESTED);
		FUNC1(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
	}
	if (FUNC6(__I40E_DOWN_REQUESTED, pf->state)) {
		reset_flags |= FUNC0(__I40E_DOWN_REQUESTED);
		FUNC1(__I40E_DOWN_REQUESTED, pf->state);
	}

	/* If there's a recovery already waiting, it takes
	 * precedence before starting a new reset sequence.
	 */
	if (FUNC6(__I40E_RESET_INTR_RECEIVED, pf->state)) {
		FUNC3(pf, false);
		FUNC5(pf);
		FUNC4(pf, false, false);
	}

	/* If we're already down or resetting, just bail */
	if (reset_flags &&
	    !FUNC6(__I40E_DOWN, pf->state) &&
	    !FUNC6(__I40E_CONFIG_BUSY, pf->state)) {
		FUNC2(pf, reset_flags, false);
	}
}