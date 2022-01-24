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
struct qlcnic_adapter {int /*<<< orphan*/  state; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QLCNIC_AER ; 
 struct qlcnic_adapter* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct qlcnic_adapter *adapter = FUNC0(pdev);

	if (FUNC2(__QLCNIC_AER, &adapter->state))
		FUNC1(adapter);
}