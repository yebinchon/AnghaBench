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
struct rhine_private {int /*<<< orphan*/  base; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct rhine_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct rhine_private *rp = FUNC1(dev);

	FUNC6(dev);

	FUNC4(pdev, rp->base);
	FUNC5(pdev);

	FUNC0(dev);
	FUNC2(pdev);
}