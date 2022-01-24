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
struct ice_hw {int /*<<< orphan*/  pkg_size; scalar_t__ pkg_copy; } ;
struct ice_pf {int /*<<< orphan*/  flags; struct ice_hw hw; TYPE_1__* pdev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ICE_ERR_PARAM ; 
 int /*<<< orphan*/  ICE_FLAG_ADV_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_hw*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const struct firmware *firmware, struct ice_pf *pf)
{
	enum ice_status status = ICE_ERR_PARAM;
	struct device *dev = &pf->pdev->dev;
	struct ice_hw *hw = &pf->hw;

	/* Load DDP Package */
	if (firmware && !hw->pkg_copy) {
		status = FUNC2(hw, firmware->data,
					       firmware->size);
		FUNC4(hw, &status);
	} else if (!firmware && hw->pkg_copy) {
		/* Reload package during rebuild after CORER/GLOBR reset */
		status = FUNC3(hw, hw->pkg_copy, hw->pkg_size);
		FUNC4(hw, &status);
	} else {
		FUNC1(dev,
			"The DDP package file failed to load. Entering Safe Mode.\n");
	}

	if (status) {
		/* Safe Mode */
		FUNC0(ICE_FLAG_ADV_FEATURES, pf->flags);
		return;
	}

	/* Successful download package is the precondition for advanced
	 * features, hence setting the ICE_FLAG_ADV_FEATURES flag
	 */
	FUNC5(ICE_FLAG_ADV_FEATURES, pf->flags);
}