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
struct net_device {int dummy; } ;
struct __vxge_hw_device {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct __vxge_hw_device* FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct __vxge_hw_device *hldev = FUNC3(pdev);
	struct net_device *netdev = hldev->ndev;

	if (FUNC2(netdev)) {
		if (FUNC4(netdev)) {
			FUNC0(netdev,
				   "Can't bring device back up after reset\n");
			return;
		}
	}

	FUNC1(netdev);
}