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
typedef  int u32 ;
struct i40e_vf {scalar_t__ num_queue_pairs; int lan_vsi_idx; int num_tc; int vf_id; int /*<<< orphan*/  vf_states; TYPE_1__* ch; scalar_t__ adq_enabled; scalar_t__ num_mac; scalar_t__ lan_vsi_id; struct i40e_pf* pf; } ;
struct TYPE_4__ {int num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_2__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; int /*<<< orphan*/ * vsi; int /*<<< orphan*/  queues_left; } ;
struct TYPE_3__ {size_t vsi_idx; scalar_t__ vsi_id; } ;

/* Variables and functions */
 scalar_t__ I40E_DEFAULT_QUEUES_PER_VF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int I40E_VFINT_DYN_CTLN_CLEARPBA_MASK ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  I40E_VF_STATE_MC_PROMISC ; 
 int /*<<< orphan*/  I40E_VF_STATE_UC_PROMISC ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK ; 
 int I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int,int) ; 

__attribute__((used)) static void FUNC8(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	u32 reg_idx, reg;
	int i, j, msix_vf;

	/* Start by disabling VF's configuration API to prevent the OS from
	 * accessing the VF's VSI after it's freed / invalidated.
	 */
	FUNC4(I40E_VF_STATE_INIT, &vf->vf_states);

	/* It's possible the VF had requeuested more queues than the default so
	 * do the accounting here when we're about to free them.
	 */
	if (vf->num_queue_pairs > I40E_DEFAULT_QUEUES_PER_VF) {
		pf->queues_left += vf->num_queue_pairs -
				   I40E_DEFAULT_QUEUES_PER_VF;
	}

	/* free vsi & disconnect it from the parent uplink */
	if (vf->lan_vsi_idx) {
		FUNC6(pf->vsi[vf->lan_vsi_idx]);
		vf->lan_vsi_idx = 0;
		vf->lan_vsi_id = 0;
		vf->num_mac = 0;
	}

	/* do the accounting and remove additional ADq VSI's */
	if (vf->adq_enabled && vf->ch[0].vsi_idx) {
		for (j = 0; j < vf->num_tc; j++) {
			/* At this point VSI0 is already released so don't
			 * release it again and only clear their values in
			 * structure variables
			 */
			if (j)
				FUNC6(pf->vsi[vf->ch[j].vsi_idx]);
			vf->ch[j].vsi_idx = 0;
			vf->ch[j].vsi_id = 0;
		}
	}
	msix_vf = pf->hw.func_caps.num_msix_vectors_vf;

	/* disable interrupts so the VF starts in a known state */
	for (i = 0; i < msix_vf; i++) {
		/* format is same for both registers */
		if (0 == i)
			reg_idx = FUNC0(vf->vf_id);
		else
			reg_idx = FUNC1(((msix_vf - 1) *
						      (vf->vf_id))
						     + (i - 1));
		FUNC7(hw, reg_idx, I40E_VFINT_DYN_CTLN_CLEARPBA_MASK);
		FUNC5(hw);
	}

	/* clear the irq settings */
	for (i = 0; i < msix_vf; i++) {
		/* format is same for both registers */
		if (0 == i)
			reg_idx = FUNC2(vf->vf_id);
		else
			reg_idx = FUNC3(((msix_vf - 1) *
						      (vf->vf_id))
						     + (i - 1));
		reg = (I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK |
		       I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK);
		FUNC7(hw, reg_idx, reg);
		FUNC5(hw);
	}
	/* reset some of the state variables keeping track of the resources */
	vf->num_queue_pairs = 0;
	FUNC4(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
	FUNC4(I40E_VF_STATE_UC_PROMISC, &vf->vf_states);
}