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
struct pci_dev {int dummy; } ;
struct ixgbe_hw {struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ixgbe_hw *hw)
{
	struct ixgbe_adapter *adapter = hw->back;
	struct pci_dev *pdev = adapter->pdev;
	struct pci_dev *func0_pdev;

	/* For the C3000 family of SoCs (x550em_a) the internal ixgbe devices
	 * are always downstream of root ports @ 0000:00:16.0 & 0000:00:17.0
	 * It's not valid for function 0 to be disabled and function 1 is up,
	 * so the lowest numbered ixgbe dev will be device 0 function 0 on one
	 * of those two root ports
	 */
	func0_pdev = FUNC1(FUNC0(0x16, 0));
	if (func0_pdev) {
		if (func0_pdev == pdev)
			return true;
		else
			return false;
	}
	func0_pdev = FUNC1(FUNC0(0x17, 0));
	if (func0_pdev == pdev)
		return true;

	return false;
}