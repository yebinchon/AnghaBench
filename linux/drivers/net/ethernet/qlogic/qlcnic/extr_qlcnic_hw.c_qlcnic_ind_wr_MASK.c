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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci_base0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct qlcnic_adapter *adapter, u32 addr, u32 data)
{
	int ret = 0;

	if (FUNC0(adapter))
		FUNC2(addr, adapter->ahw->pci_base0, data);
	else
		ret = FUNC1(adapter, addr, data);

	return ret;
}