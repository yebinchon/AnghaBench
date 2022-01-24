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
struct ice_hw {int dummy; } ;
struct ice_pf {int num_avail_sw_msix; int oicr_idx; int /*<<< orphan*/  irq_tracker; int /*<<< orphan*/ * int_name; TYPE_2__* pdev; TYPE_1__* msix_entries; int /*<<< orphan*/  state; struct ice_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ICE_ITR_8K ; 
 int ICE_ITR_GRAN_S ; 
 int /*<<< orphan*/  ICE_RES_MISC_VEC_ID ; 
 int /*<<< orphan*/  ICE_RX_ITR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ice_pf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ice_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ice_misc_intr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct ice_pf *pf)
{
	struct ice_hw *hw = &pf->hw;
	int oicr_idx, err = 0;

	if (!pf->int_name[0])
		FUNC13(pf->int_name, sizeof(pf->int_name) - 1, "%s-%s:misc",
			 FUNC2(&pf->pdev->dev),
			 FUNC4(&pf->pdev->dev));

	/* Do not request IRQ but do enable OICR interrupt since settings are
	 * lost during reset. Note that this function is called only during
	 * rebuild path and not while reset is in progress.
	 */
	if (FUNC12(pf->state))
		goto skip_req_irq;

	/* reserve one vector in irq_tracker for misc interrupts */
	oicr_idx = FUNC10(pf, pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
	if (oicr_idx < 0)
		return oicr_idx;

	pf->num_avail_sw_msix -= 1;
	pf->oicr_idx = oicr_idx;

	err = FUNC5(&pf->pdev->dev,
			       pf->msix_entries[pf->oicr_idx].vector,
			       ice_misc_intr, 0, pf->int_name, pf);
	if (err) {
		FUNC3(&pf->pdev->dev,
			"devm_request_irq for %s failed: %d\n",
			pf->int_name, err);
		FUNC9(pf->irq_tracker, 1, ICE_RES_MISC_VEC_ID);
		pf->num_avail_sw_msix += 1;
		return err;
	}

skip_req_irq:
	FUNC7(pf);

	FUNC6(hw, pf->oicr_idx);
	FUNC14(hw, FUNC0(ICE_RX_ITR, pf->oicr_idx),
	     FUNC1(ICE_ITR_8K) >> ICE_ITR_GRAN_S);

	FUNC8(hw);
	FUNC11(hw, NULL, NULL);

	return 0;
}