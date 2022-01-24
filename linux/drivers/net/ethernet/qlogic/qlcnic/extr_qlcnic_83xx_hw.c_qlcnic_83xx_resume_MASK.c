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
struct qlc_83xx_idc {int /*<<< orphan*/  delay; } ;
struct qlcnic_hardware_context {scalar_t__ nic_mode; scalar_t__ op_mode; struct qlc_83xx_idc idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_MGMT_FUNC ; 
 scalar_t__ QLCNIC_VNIC_MODE ; 
 int FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_83xx_idc_poll_dev_state ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlc_83xx_idc *idc = &ahw->idc;
	int err = 0;

	err = FUNC1(adapter);
	if (err)
		return err;

	if (ahw->nic_mode == QLCNIC_VNIC_MODE) {
		if (ahw->op_mode == QLCNIC_MGMT_FUNC) {
			FUNC3(adapter);
		} else {
			err = FUNC0(adapter);
			if (err)
				return err;
		}
	}

	err = FUNC2(adapter);
	if (err)
		return err;

	FUNC4(adapter, qlcnic_83xx_idc_poll_dev_state,
			     idc->delay);
	return err;
}