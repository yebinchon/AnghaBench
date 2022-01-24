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
struct ice_hw {int dummy; } ;
struct ice_pf {int /*<<< orphan*/  state; int /*<<< orphan*/  pfr_count; struct ice_hw hw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ICE_RESET_PFR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ICE_CORER_REQ ; 
 int /*<<< orphan*/  __ICE_GLOBR_REQ ; 
 int /*<<< orphan*/  __ICE_PFR_REQ ; 
 int /*<<< orphan*/  __ICE_PREPARED_FOR_RESET ; 
 int /*<<< orphan*/  __ICE_RESET_FAILED ; 
 int /*<<< orphan*/  __ICE_RESET_OICR_RECV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_pf*,int) ; 
 scalar_t__ FUNC6 (struct ice_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ice_pf *pf, enum ice_reset_req reset_type)
{
	struct device *dev = &pf->pdev->dev;
	struct ice_hw *hw = &pf->hw;

	FUNC2(dev, "reset_type 0x%x requested\n", reset_type);
	FUNC0(FUNC8());

	FUNC4(pf);

	/* trigger the reset */
	if (FUNC6(hw, reset_type)) {
		FUNC3(dev, "reset %d failed\n", reset_type);
		FUNC9(__ICE_RESET_FAILED, pf->state);
		FUNC1(__ICE_RESET_OICR_RECV, pf->state);
		FUNC1(__ICE_PREPARED_FOR_RESET, pf->state);
		FUNC1(__ICE_PFR_REQ, pf->state);
		FUNC1(__ICE_CORER_REQ, pf->state);
		FUNC1(__ICE_GLOBR_REQ, pf->state);
		return;
	}

	/* PFR is a bit of a special case because it doesn't result in an OICR
	 * interrupt. So for PFR, rebuild after the reset and clear the reset-
	 * associated state bits.
	 */
	if (reset_type == ICE_RESET_PFR) {
		pf->pfr_count++;
		FUNC5(pf, reset_type);
		FUNC1(__ICE_PREPARED_FOR_RESET, pf->state);
		FUNC1(__ICE_PFR_REQ, pf->state);
		FUNC7(pf, true);
	}
}