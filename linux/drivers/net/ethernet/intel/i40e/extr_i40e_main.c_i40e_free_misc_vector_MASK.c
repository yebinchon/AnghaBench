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
struct i40e_pf {int flags; int /*<<< orphan*/  state; TYPE_1__* msix_entries; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int /*<<< orphan*/  __I40E_MISC_IRQ_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i40e_pf *pf)
{
	/* Disable ICR 0 */
	FUNC4(&pf->hw, I40E_PFINT_ICR0_ENA, 0);
	FUNC2(&pf->hw);

	if (pf->flags & I40E_FLAG_MSIX_ENABLED && pf->msix_entries) {
		FUNC3(pf->msix_entries[0].vector);
		FUNC1(pf->msix_entries[0].vector, pf);
		FUNC0(__I40E_MISC_IRQ_REQUESTED, pf->state);
	}
}