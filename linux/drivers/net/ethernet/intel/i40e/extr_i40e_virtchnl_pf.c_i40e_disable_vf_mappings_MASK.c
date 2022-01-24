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
struct i40e_vf {int /*<<< orphan*/  vf_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int I40E_MAX_VSI_QP ; 
 int /*<<< orphan*/  I40E_QUEUE_END_OF_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	int i;

	/* disable qp mappings */
	FUNC3(hw, FUNC0(vf->vf_id), 0);
	for (i = 0; i < I40E_MAX_VSI_QP; i++)
		FUNC3(hw, FUNC1(i, vf->vf_id),
		     I40E_QUEUE_END_OF_LIST);
	FUNC2(hw);
}