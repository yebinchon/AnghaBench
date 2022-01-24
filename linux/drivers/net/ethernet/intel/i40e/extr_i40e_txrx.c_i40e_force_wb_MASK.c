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
typedef  int u32 ;
struct i40e_vsi {TYPE_1__* back; } ;
struct i40e_q_vector {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  I40E_PFINT_DYN_CTL0 ; 
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ; 
 int I40E_PFINT_DYN_CTL0_ITR_INDX_MASK ; 
 int I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK ; 
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_PFINT_DYN_CTLN_INTENA_MASK ; 
 int I40E_PFINT_DYN_CTLN_ITR_INDX_MASK ; 
 int I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK ; 
 int I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct i40e_vsi *vsi, struct i40e_q_vector *q_vector)
{
	if (vsi->back->flags & I40E_FLAG_MSIX_ENABLED) {
		u32 val = I40E_PFINT_DYN_CTLN_INTENA_MASK |
			  I40E_PFINT_DYN_CTLN_ITR_INDX_MASK | /* set noitr */
			  I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK |
			  I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK;
			  /* allow 00 to be written to the index */

		FUNC1(&vsi->back->hw,
		     FUNC0(q_vector->reg_idx), val);
	} else {
		u32 val = I40E_PFINT_DYN_CTL0_INTENA_MASK |
			  I40E_PFINT_DYN_CTL0_ITR_INDX_MASK | /* set noitr */
			  I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK |
			  I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK;
			/* allow 00 to be written to the index */

		FUNC1(&vsi->back->hw, I40E_PFINT_DYN_CTL0, val);
	}
}