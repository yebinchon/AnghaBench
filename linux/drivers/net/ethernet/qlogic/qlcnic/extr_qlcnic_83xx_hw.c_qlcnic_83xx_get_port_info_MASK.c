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
struct qlcnic_hardware_context {int port_config; int /*<<< orphan*/  link_autoneg; void* port_type; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 void* QLCNIC_GBE ; 
 void* QLCNIC_XGBE ; 
 int QLC_83XX_100_CAPABLE ; 
 int QLC_83XX_10G_CAPABLE ; 
 int QLC_83XX_10_CAPABLE ; 
 int QLC_83XX_1G_CAPABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int status;

	status = FUNC2(adapter);
	if (status) {
		FUNC1(&adapter->pdev->dev,
			"Get Port Info failed\n");
	} else {

		if (ahw->port_config & QLC_83XX_10G_CAPABLE) {
			ahw->port_type = QLCNIC_XGBE;
		} else if (ahw->port_config & QLC_83XX_10_CAPABLE ||
			   ahw->port_config & QLC_83XX_100_CAPABLE ||
			   ahw->port_config & QLC_83XX_1G_CAPABLE) {
			ahw->port_type = QLCNIC_GBE;
		} else {
			ahw->port_type = QLCNIC_XGBE;
		}

		if (FUNC0(ahw->port_config))
			ahw->link_autoneg = AUTONEG_ENABLE;

	}
	return status;
}