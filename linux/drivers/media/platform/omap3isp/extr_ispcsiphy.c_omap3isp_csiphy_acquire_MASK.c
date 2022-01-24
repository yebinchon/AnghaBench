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
struct media_entity {int dummy; } ;
struct isp_csiphy {int /*<<< orphan*/  mutex; struct media_entity* entity; int /*<<< orphan*/ * vdd; TYPE_1__* isp; int /*<<< orphan*/  csi2; } ;
struct TYPE_2__ {scalar_t__ revision; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ISPCSI2_PHY_CFG_PWR_CMD_ON ; 
 scalar_t__ ISP_REVISION_15_0 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_csiphy*,int) ; 
 int FUNC1 (struct isp_csiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct isp_csiphy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct isp_csiphy *phy, struct media_entity *entity)
{
	int rval;

	if (phy->vdd == NULL) {
		FUNC2(phy->isp->dev,
			"Power regulator for CSI PHY not available\n");
		return -ENODEV;
	}

	FUNC3(&phy->mutex);

	rval = FUNC8(phy->vdd);
	if (rval < 0)
		goto done;

	rval = FUNC5(phy->csi2);
	if (rval < 0)
		goto done;

	phy->entity = entity;

	rval = FUNC6(phy);
	if (rval < 0)
		goto done;

	if (phy->isp->revision == ISP_REVISION_15_0) {
		rval = FUNC1(phy, ISPCSI2_PHY_CFG_PWR_CMD_ON);
		if (rval) {
			FUNC7(phy->vdd);
			goto done;
		}

		FUNC0(phy, true);
	}
done:
	if (rval < 0)
		phy->entity = NULL;

	FUNC4(&phy->mutex);
	return rval;
}