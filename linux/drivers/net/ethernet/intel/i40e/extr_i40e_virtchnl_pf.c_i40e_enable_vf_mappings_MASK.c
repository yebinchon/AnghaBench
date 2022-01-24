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
struct i40e_vf {int /*<<< orphan*/  vf_id; int /*<<< orphan*/  lan_vsi_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_VPLAN_MAPENA_TXRX_ENA_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	u32 reg;

	/* Tell the hardware we're using noncontiguous mapping. HW requires
	 * that VF queues be mapped using this method, even when they are
	 * contiguous in real life
	 */
	FUNC5(hw, FUNC1(vf->lan_vsi_id),
			  I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK);

	/* enable VF vplan_qtable mappings */
	reg = I40E_VPLAN_MAPENA_TXRX_ENA_MASK;
	FUNC6(hw, FUNC0(vf->vf_id), reg);

	FUNC4(vf);
	FUNC3(vf);

	FUNC2(hw);
}