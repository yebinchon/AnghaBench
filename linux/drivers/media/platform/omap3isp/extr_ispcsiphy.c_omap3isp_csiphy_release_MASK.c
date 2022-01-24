#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct isp_pipeline {int /*<<< orphan*/  external; } ;
struct isp_csiphy {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * entity; int /*<<< orphan*/  vdd; TYPE_3__* isp; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_layer; } ;
struct TYPE_5__ {TYPE_1__ ccp2; } ;
struct isp_bus_cfg {TYPE_2__ bus; int /*<<< orphan*/  interface; } ;
struct TYPE_6__ {scalar_t__ revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPCSI2_PHY_CFG_PWR_CMD_OFF ; 
 scalar_t__ ISP_REVISION_15_0 ; 
 int /*<<< orphan*/  FUNC0 (struct isp_csiphy*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_csiphy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_csiphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct isp_pipeline* FUNC6 (int /*<<< orphan*/ *) ; 
 struct isp_bus_cfg* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct isp_csiphy *phy)
{
	FUNC3(&phy->mutex);
	if (phy->entity) {
		struct isp_pipeline *pipe = FUNC6(phy->entity);
		struct isp_bus_cfg *buscfg =
			FUNC7(pipe->external);

		FUNC1(phy, buscfg->interface, false,
				   buscfg->bus.ccp2.phy_layer);
		if (phy->isp->revision == ISP_REVISION_15_0) {
			FUNC0(phy, false);
			FUNC2(phy, ISPCSI2_PHY_CFG_PWR_CMD_OFF);
		}
		FUNC5(phy->vdd);
		phy->entity = NULL;
	}
	FUNC4(&phy->mutex);
}