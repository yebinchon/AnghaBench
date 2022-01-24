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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_hardware_context {int* extra_capability; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_82XX_SET_DRV_VER ; 
 int /*<<< orphan*/  QLCNIC_CMD_83XX_SET_DRV_VER ; 
 int QLCNIC_FW_CAPABILITY_SET_DRV_VER ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

void FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	u32 fw_cmd = 0;

	if (FUNC0(adapter))
		fw_cmd = QLCNIC_CMD_82XX_SET_DRV_VER;
	else if (FUNC1(adapter))
		fw_cmd = QLCNIC_CMD_83XX_SET_DRV_VER;

	if (ahw->extra_capability[0] & QLCNIC_FW_CAPABILITY_SET_DRV_VER)
		FUNC2(adapter, fw_cmd);
}