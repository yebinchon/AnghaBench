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
struct i40e_vf {int vf_id; struct i40e_pf* pf; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I40E_PF_PCI_CIAA ; 
 int I40E_PF_PCI_CIAA_VF_NUM_SHIFT ; 
 int /*<<< orphan*/  I40E_PF_PCI_CIAD ; 
 int VF_DEVICE_STATUS ; 
 int VF_TRANS_PENDING_MASK ; 
 int FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	int vf_abs_id, i;
	u32 reg;

	vf_abs_id = vf->vf_id + hw->func_caps.vf_base_id;

	FUNC2(hw, I40E_PF_PCI_CIAA,
	     VF_DEVICE_STATUS | (vf_abs_id << I40E_PF_PCI_CIAA_VF_NUM_SHIFT));
	for (i = 0; i < 100; i++) {
		reg = FUNC0(hw, I40E_PF_PCI_CIAD);
		if ((reg & VF_TRANS_PENDING_MASK) == 0)
			return 0;
		FUNC1(1);
	}
	return -EIO;
}