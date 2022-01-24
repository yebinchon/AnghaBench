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
struct ice_hw {int /*<<< orphan*/  port_info; } ;
struct ice_pf {int /*<<< orphan*/  state; int /*<<< orphan*/  flags; TYPE_1__* pdev; struct ice_hw hw; } ;
struct device {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_FLAG_DCB_ENA ; 
 int /*<<< orphan*/  ICE_FLAG_SRIOV_ENA ; 
 int ICE_RESET_PFR ; 
 int /*<<< orphan*/  ICE_VSI_PF ; 
 int /*<<< orphan*/  ICE_VSI_VF ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  __ICE_NEEDS_RESTART ; 
 int /*<<< orphan*/  __ICE_RESET_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*) ; 
 int FUNC7 (struct ice_hw*) ; 
 int FUNC8 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC11 (struct ice_hw*) ; 
 int FUNC12 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ice_hw*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC16 (struct ice_hw*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ice_pf*) ; 
 int FUNC19 (struct ice_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct ice_pf *pf, enum ice_reset_req reset_type)
{
	struct device *dev = &pf->pdev->dev;
	struct ice_hw *hw = &pf->hw;
	enum ice_status ret;
	int err;

	if (FUNC21(__ICE_DOWN, pf->state))
		goto clear_recovery;

	FUNC1(dev, "rebuilding PF after reset_type=%d\n", reset_type);

	ret = FUNC8(hw);
	if (ret) {
		FUNC2(dev, "control queues init failed %d\n", ret);
		goto err_init_ctrlq;
	}

	/* if DDP was previously loaded successfully */
	if (!FUNC9(pf)) {
		/* reload the SW DB of filter tables */
		if (reset_type == ICE_RESET_PFR)
			FUNC6(hw);
		else
			/* Reload DDP Package after CORER/GLOBR reset */
			FUNC10(NULL, pf);
	}

	ret = FUNC3(hw);
	if (ret) {
		FUNC2(dev, "clear PF configuration failed %d\n", ret);
		goto err_init_ctrlq;
	}

	FUNC4(hw);

	ret = FUNC7(hw);
	if (ret) {
		FUNC2(dev, "ice_get_caps failed %d\n", ret);
		goto err_init_ctrlq;
	}

	err = FUNC14(hw->port_info);
	if (err)
		goto err_sched_init_port;

	err = FUNC17(hw->port_info);
	if (err)
		FUNC2(&pf->pdev->dev, "Get link status error %d\n", err);

	/* start misc vector */
	err = FUNC12(pf);
	if (err) {
		FUNC2(dev, "misc vector setup failed: %d\n", err);
		goto err_sched_init_port;
	}

	if (FUNC21(ICE_FLAG_DCB_ENA, pf->flags))
		FUNC5(pf);

	/* rebuild PF VSI */
	err = FUNC19(pf, ICE_VSI_PF);
	if (err) {
		FUNC2(dev, "PF VSI rebuild failed: %d\n", err);
		goto err_vsi_rebuild;
	}

	if (FUNC21(ICE_FLAG_SRIOV_ENA, pf->flags)) {
		err = FUNC19(pf, ICE_VSI_VF);
		if (err) {
			FUNC2(dev, "VF VSI rebuild failed: %d\n", err);
			goto err_vsi_rebuild;
		}
	}

	FUNC18(pf);

	/* tell the firmware we are up */
	ret = FUNC15(pf);
	if (ret) {
		FUNC2(dev,
			"Rebuild failed due to error sending driver version: %d\n",
			ret);
		goto err_vsi_rebuild;
	}

	FUNC11(hw);

	/* if we get here, reset flow is successful */
	FUNC0(__ICE_RESET_FAILED, pf->state);
	return;

err_vsi_rebuild:
err_sched_init_port:
	FUNC13(hw);
err_init_ctrlq:
	FUNC16(hw);
	FUNC20(__ICE_RESET_FAILED, pf->state);
clear_recovery:
	/* set this bit in PF state to control service task scheduling */
	FUNC20(__ICE_NEEDS_RESTART, pf->state);
	FUNC2(dev, "Rebuild failed, unload and reload driver\n");
}