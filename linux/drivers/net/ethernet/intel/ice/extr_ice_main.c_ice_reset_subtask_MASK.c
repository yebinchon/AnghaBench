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
struct TYPE_2__ {int reset_ongoing; } ;
struct ice_pf {int /*<<< orphan*/  state; TYPE_1__ hw; } ;
typedef  enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;

/* Variables and functions */
 int ICE_RESET_CORER ; 
 int ICE_RESET_EMPR ; 
 int ICE_RESET_GLOBR ; 
 int ICE_RESET_INVAL ; 
 int ICE_RESET_PFR ; 
 int /*<<< orphan*/  __ICE_CFG_BUSY ; 
 int /*<<< orphan*/  __ICE_CORER_RECV ; 
 int /*<<< orphan*/  __ICE_CORER_REQ ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  __ICE_EMPR_RECV ; 
 int /*<<< orphan*/  __ICE_GLOBR_RECV ; 
 int /*<<< orphan*/  __ICE_GLOBR_REQ ; 
 int /*<<< orphan*/  __ICE_PFR_REQ ; 
 int /*<<< orphan*/  __ICE_PREPARED_FOR_RESET ; 
 int /*<<< orphan*/  __ICE_RESET_FAILED ; 
 int /*<<< orphan*/  __ICE_RESET_OICR_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ice_pf *pf)
{
	enum ice_reset_req reset_type = ICE_RESET_INVAL;

	/* When a CORER/GLOBR/EMPR is about to happen, the hardware triggers an
	 * OICR interrupt. The OICR handler (ice_misc_intr) determines what type
	 * of reset is pending and sets bits in pf->state indicating the reset
	 * type and __ICE_RESET_OICR_RECV. So, if the latter bit is set
	 * prepare for pending reset if not already (for PF software-initiated
	 * global resets the software should already be prepared for it as
	 * indicated by __ICE_PREPARED_FOR_RESET; for global resets initiated
	 * by firmware or software on other PFs, that bit is not set so prepare
	 * for the reset now), poll for reset done, rebuild and return.
	 */
	if (FUNC8(__ICE_RESET_OICR_RECV, pf->state)) {
		/* Perform the largest reset requested */
		if (FUNC7(__ICE_CORER_RECV, pf->state))
			reset_type = ICE_RESET_CORER;
		if (FUNC7(__ICE_GLOBR_RECV, pf->state))
			reset_type = ICE_RESET_GLOBR;
		if (FUNC7(__ICE_EMPR_RECV, pf->state))
			reset_type = ICE_RESET_EMPR;
		/* return if no valid reset type requested */
		if (reset_type == ICE_RESET_INVAL)
			return;
		FUNC3(pf);

		/* make sure we are ready to rebuild */
		if (FUNC1(&pf->hw)) {
			FUNC6(__ICE_RESET_FAILED, pf->state);
		} else {
			/* done with reset. start rebuild */
			pf->hw.reset_ongoing = false;
			FUNC4(pf, reset_type);
			/* clear bit to resume normal operations, but
			 * ICE_NEEDS_RESTART bit is set in case rebuild failed
			 */
			FUNC0(__ICE_RESET_OICR_RECV, pf->state);
			FUNC0(__ICE_PREPARED_FOR_RESET, pf->state);
			FUNC0(__ICE_PFR_REQ, pf->state);
			FUNC0(__ICE_CORER_REQ, pf->state);
			FUNC0(__ICE_GLOBR_REQ, pf->state);
			FUNC5(pf, true);
		}

		return;
	}

	/* No pending resets to finish processing. Check for new resets */
	if (FUNC8(__ICE_PFR_REQ, pf->state))
		reset_type = ICE_RESET_PFR;
	if (FUNC8(__ICE_CORER_REQ, pf->state))
		reset_type = ICE_RESET_CORER;
	if (FUNC8(__ICE_GLOBR_REQ, pf->state))
		reset_type = ICE_RESET_GLOBR;
	/* If no valid reset type requested just return */
	if (reset_type == ICE_RESET_INVAL)
		return;

	/* reset if not already down or busy */
	if (!FUNC8(__ICE_DOWN, pf->state) &&
	    !FUNC8(__ICE_CFG_BUSY, pf->state)) {
		FUNC2(pf, reset_type);
	}
}