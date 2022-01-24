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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I40E_CONFIG_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;

	FUNC0(FUNC4());
	while (FUNC5(__I40E_CONFIG_BUSY, pf->state))
		FUNC6(1000, 2000);
	FUNC2(vsi);

	FUNC3(vsi);
	FUNC1(__I40E_CONFIG_BUSY, pf->state);
}