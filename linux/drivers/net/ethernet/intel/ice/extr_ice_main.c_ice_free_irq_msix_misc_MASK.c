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
struct ice_pf {size_t oicr_idx; int num_avail_sw_msix; int /*<<< orphan*/  irq_tracker; TYPE_2__* msix_entries; TYPE_1__* pdev; struct ice_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_RES_MISC_VEC_ID ; 
 int /*<<< orphan*/  PFINT_OICR_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ice_pf *pf)
{
	struct ice_hw *hw = &pf->hw;

	FUNC1(hw);

	/* disable OICR interrupt */
	FUNC5(hw, PFINT_OICR_ENA, 0);
	FUNC2(hw);

	if (pf->msix_entries) {
		FUNC4(pf->msix_entries[pf->oicr_idx].vector);
		FUNC0(&pf->pdev->dev,
			      pf->msix_entries[pf->oicr_idx].vector, pf);
	}

	pf->num_avail_sw_msix += 1;
	FUNC3(pf->irq_tracker, pf->oicr_idx, ICE_RES_MISC_VEC_ID);
}