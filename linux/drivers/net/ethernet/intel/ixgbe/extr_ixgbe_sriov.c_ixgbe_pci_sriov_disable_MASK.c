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
struct pci_dev {int dummy; } ;
struct ixgbe_adapter {scalar_t__ flags; } ;

/* Variables and functions */
 int FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	struct ixgbe_adapter *adapter = FUNC2(dev);
	int err;
#ifdef CONFIG_PCI_IOV
	u32 current_flags = adapter->flags;
	int prev_num_vf = pci_num_vf(dev);
#endif

	err = FUNC0(adapter);

	/* Only reinit if no error and state changed */
#ifdef CONFIG_PCI_IOV
	if (!err && (current_flags != adapter->flags ||
		     prev_num_vf != pci_num_vf(dev)))
		ixgbe_sriov_reinit(adapter);
#endif

	return err;
}