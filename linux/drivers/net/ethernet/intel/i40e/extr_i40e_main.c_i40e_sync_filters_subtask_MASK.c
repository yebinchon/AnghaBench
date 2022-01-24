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
struct i40e_pf {int num_alloc_vsi; int /*<<< orphan*/  state; TYPE_1__** vsi; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int I40E_VSI_FLAG_FILTER_CHANGED ; 
 int /*<<< orphan*/  __I40E_MACVLAN_SYNC_PENDING ; 
 int /*<<< orphan*/  __I40E_VF_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i40e_pf *pf)
{
	int v;

	if (!pf)
		return;
	if (!FUNC3(__I40E_MACVLAN_SYNC_PENDING, pf->state))
		return;
	if (FUNC4(__I40E_VF_DISABLE, pf->state)) {
		FUNC2(__I40E_MACVLAN_SYNC_PENDING, pf->state);
		return;
	}

	for (v = 0; v < pf->num_alloc_vsi; v++) {
		if (pf->vsi[v] &&
		    (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED)) {
			int ret = FUNC1(pf->vsi[v]);

			if (ret) {
				/* come back and try again later */
				FUNC2(__I40E_MACVLAN_SYNC_PENDING,
					pf->state);
				break;
			}
		}
	}
	FUNC0(__I40E_VF_DISABLE, pf->state);
}