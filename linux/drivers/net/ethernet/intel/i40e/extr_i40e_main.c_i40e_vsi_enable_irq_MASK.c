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
struct i40e_vsi {int num_q_vectors; struct i40e_pf* back; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 

__attribute__((used)) static int FUNC3(struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = vsi->back;
	int i;

	if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
		for (i = 0; i < vsi->num_q_vectors; i++)
			FUNC1(vsi, i);
	} else {
		FUNC2(pf);
	}

	FUNC0(&pf->hw);
	return 0;
}