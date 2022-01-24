#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_3__ {scalar_t__ prev_state; } ;
struct TYPE_4__ {scalar_t__ pci_func; TYPE_1__ idc; } ;

/* Variables and functions */
 scalar_t__ QLC_83XX_IDC_DEV_NEED_RESET ; 
 int QLC_83XX_IDC_INIT_TIMEOUT_SECS ; 
 int FUNC0 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	int timeout, ret = 0;
	u32 owner;

	timeout = QLC_83XX_IDC_INIT_TIMEOUT_SECS;
	if (adapter->ahw->idc.prev_state == QLC_83XX_IDC_DEV_NEED_RESET) {
		owner = FUNC1(adapter);
		if (adapter->ahw->pci_func == owner)
			ret = FUNC2(adapter, 1);
	} else {
		ret = FUNC0(adapter, timeout);
	}

	return ret;
}