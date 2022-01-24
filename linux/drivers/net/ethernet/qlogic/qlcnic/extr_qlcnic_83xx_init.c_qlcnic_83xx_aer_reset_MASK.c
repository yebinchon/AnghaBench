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
typedef  scalar_t__ u32 ;
struct qlc_83xx_idc {int (* state_entry ) (struct qlcnic_adapter*) ;int /*<<< orphan*/  prev_state; } ;
struct qlcnic_hardware_context {scalar_t__ pci_func; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_83XX_IDC_DEV_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlc_83xx_idc *idc = &ahw->idc;
	int ret = 0;
	u32 owner;

	/* Mark the previous IDC state as NEED_RESET so
	 * that state_entry() will perform the reattachment
	 * and bringup the device
	 */
	idc->prev_state = QLC_83XX_IDC_DEV_NEED_RESET;
	owner = FUNC1(adapter);
	if (ahw->pci_func == owner) {
		ret = FUNC2(adapter);
		if (ret < 0)
			return ret;
		FUNC0(adapter, 0);
	}

	ret = idc->state_entry(adapter);
	return ret;
}