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
struct qlcnic_adapter {int /*<<< orphan*/  state; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_POLL_DELAY ; 
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 scalar_t__ QLCNIC_DEV_READY ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 struct qlcnic_adapter* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  qlcnic_fw_poll_work ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	u32 state;
	struct qlcnic_adapter *adapter = FUNC1(pdev);

	state = FUNC0(adapter, QLCNIC_CRB_DEV_STATE);
	if (state == QLCNIC_DEV_READY && FUNC3(__QLCNIC_AER,
							    &adapter->state))
		FUNC2(adapter, qlcnic_fw_poll_work,
				     FW_POLL_DELAY);
}