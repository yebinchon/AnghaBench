#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlc_83xx_idc {int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {scalar_t__ nic_mode; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {int /*<<< orphan*/  idc_aen_work; int /*<<< orphan*/  fw_work; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_VNIC_MODE ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

void FUNC5(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlc_83xx_idc *idc = &ahw->idc;

	FUNC1(QLC_83XX_MBX_READY, &idc->status);
	FUNC0(&adapter->fw_work);

	if (ahw->nic_mode == QLCNIC_VNIC_MODE)
		FUNC2(adapter, 1);

	FUNC3(adapter);
	FUNC4(adapter, 0);

	FUNC0(&adapter->idc_aen_work);
}