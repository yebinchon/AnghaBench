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
struct vxgedev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct __vxge_hw_device {struct net_device* ndev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  VXGE_LL_FULL_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct vxgedev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct vxgedev* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct __vxge_hw_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev)
{
	struct __vxge_hw_device *hldev = FUNC4(pdev);
	struct net_device *netdev = hldev->ndev;

	struct vxgedev *vdev = FUNC2(netdev);

	if (FUNC3(pdev)) {
		FUNC1(netdev, "Cannot re-enable device after reset\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC5(pdev);
	FUNC0(vdev, VXGE_LL_FULL_RESET);

	return PCI_ERS_RESULT_RECOVERED;
}