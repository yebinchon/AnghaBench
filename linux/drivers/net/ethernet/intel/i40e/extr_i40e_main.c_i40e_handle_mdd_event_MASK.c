#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct i40e_vf {int /*<<< orphan*/  vf_states; int /*<<< orphan*/  num_mdd_events; } ;
struct TYPE_3__ {int base_queue; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; int /*<<< orphan*/  state; TYPE_2__* pdev; struct i40e_vf* vf; struct i40e_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_GL_MDET_RX ; 
 int I40E_GL_MDET_RX_EVENT_MASK ; 
 int I40E_GL_MDET_RX_EVENT_SHIFT ; 
 int I40E_GL_MDET_RX_FUNCTION_MASK ; 
 int I40E_GL_MDET_RX_FUNCTION_SHIFT ; 
 int I40E_GL_MDET_RX_QUEUE_MASK ; 
 int I40E_GL_MDET_RX_QUEUE_SHIFT ; 
 int I40E_GL_MDET_RX_VALID_MASK ; 
 int /*<<< orphan*/  I40E_GL_MDET_TX ; 
 int I40E_GL_MDET_TX_EVENT_MASK ; 
 int I40E_GL_MDET_TX_EVENT_SHIFT ; 
 int I40E_GL_MDET_TX_PF_NUM_MASK ; 
 int I40E_GL_MDET_TX_PF_NUM_SHIFT ; 
 int I40E_GL_MDET_TX_QUEUE_MASK ; 
 int I40E_GL_MDET_TX_QUEUE_SHIFT ; 
 int I40E_GL_MDET_TX_VALID_MASK ; 
 int I40E_GL_MDET_TX_VF_NUM_MASK ; 
 int I40E_GL_MDET_TX_VF_NUM_SHIFT ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK ; 
 int /*<<< orphan*/  I40E_PF_MDET_RX ; 
 int I40E_PF_MDET_RX_VALID_MASK ; 
 int /*<<< orphan*/  I40E_PF_MDET_TX ; 
 int I40E_PF_MDET_TX_VALID_MASK ; 
 int /*<<< orphan*/  I40E_VF_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_VP_MDET_RX_VALID_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I40E_VP_MDET_TX_VALID_MASK ; 
 int /*<<< orphan*/  __I40E_MDD_EVENT_PENDING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 
 scalar_t__ FUNC6 (struct i40e_pf*) ; 
 scalar_t__ FUNC7 (struct i40e_pf*) ; 
 int FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	bool mdd_detected = false;
	struct i40e_vf *vf;
	u32 reg;
	int i;

	if (!FUNC10(__I40E_MDD_EVENT_PENDING, pf->state))
		return;

	/* find what triggered the MDD event */
	reg = FUNC8(hw, I40E_GL_MDET_TX);
	if (reg & I40E_GL_MDET_TX_VALID_MASK) {
		u8 pf_num = (reg & I40E_GL_MDET_TX_PF_NUM_MASK) >>
				I40E_GL_MDET_TX_PF_NUM_SHIFT;
		u16 vf_num = (reg & I40E_GL_MDET_TX_VF_NUM_MASK) >>
				I40E_GL_MDET_TX_VF_NUM_SHIFT;
		u8 event = (reg & I40E_GL_MDET_TX_EVENT_MASK) >>
				I40E_GL_MDET_TX_EVENT_SHIFT;
		u16 queue = ((reg & I40E_GL_MDET_TX_QUEUE_MASK) >>
				I40E_GL_MDET_TX_QUEUE_SHIFT) -
				pf->hw.func_caps.base_queue;
		if (FUNC7(pf))
			FUNC4(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on TX queue %d PF number 0x%02x VF number 0x%02x\n",
				 event, queue, pf_num, vf_num);
		FUNC11(hw, I40E_GL_MDET_TX, 0xffffffff);
		mdd_detected = true;
	}
	reg = FUNC8(hw, I40E_GL_MDET_RX);
	if (reg & I40E_GL_MDET_RX_VALID_MASK) {
		u8 func = (reg & I40E_GL_MDET_RX_FUNCTION_MASK) >>
				I40E_GL_MDET_RX_FUNCTION_SHIFT;
		u8 event = (reg & I40E_GL_MDET_RX_EVENT_MASK) >>
				I40E_GL_MDET_RX_EVENT_SHIFT;
		u16 queue = ((reg & I40E_GL_MDET_RX_QUEUE_MASK) >>
				I40E_GL_MDET_RX_QUEUE_SHIFT) -
				pf->hw.func_caps.base_queue;
		if (FUNC6(pf))
			FUNC4(&pf->pdev->dev, "Malicious Driver Detection event 0x%02x on RX queue %d of function 0x%02x\n",
				 event, queue, func);
		FUNC11(hw, I40E_GL_MDET_RX, 0xffffffff);
		mdd_detected = true;
	}

	if (mdd_detected) {
		reg = FUNC8(hw, I40E_PF_MDET_TX);
		if (reg & I40E_PF_MDET_TX_VALID_MASK) {
			FUNC11(hw, I40E_PF_MDET_TX, 0xFFFF);
			FUNC3(&pf->pdev->dev, "TX driver issue detected on PF\n");
		}
		reg = FUNC8(hw, I40E_PF_MDET_RX);
		if (reg & I40E_PF_MDET_RX_VALID_MASK) {
			FUNC11(hw, I40E_PF_MDET_RX, 0xFFFF);
			FUNC3(&pf->pdev->dev, "RX driver issue detected on PF\n");
		}
	}

	/* see if one of the VFs needs its hand slapped */
	for (i = 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
		vf = &(pf->vf[i]);
		reg = FUNC8(hw, FUNC1(i));
		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
			FUNC11(hw, FUNC1(i), 0xFFFF);
			vf->num_mdd_events++;
			FUNC4(&pf->pdev->dev, "TX driver issue detected on VF %d\n",
				 i);
			FUNC4(&pf->pdev->dev,
				 "Use PF Control I/F to re-enable the VF\n");
			FUNC9(I40E_VF_STATE_DISABLED, &vf->vf_states);
		}

		reg = FUNC8(hw, FUNC0(i));
		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
			FUNC11(hw, FUNC0(i), 0xFFFF);
			vf->num_mdd_events++;
			FUNC4(&pf->pdev->dev, "RX driver issue detected on VF %d\n",
				 i);
			FUNC4(&pf->pdev->dev,
				 "Use PF Control I/F to re-enable the VF\n");
			FUNC9(I40E_VF_STATE_DISABLED, &vf->vf_states);
		}
	}

	/* re-enable mdd interrupt cause */
	FUNC2(__I40E_MDD_EVENT_PENDING, pf->state);
	reg = FUNC8(hw, I40E_PFINT_ICR0_ENA);
	reg |=  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
	FUNC11(hw, I40E_PFINT_ICR0_ENA, reg);
	FUNC5(hw);
}