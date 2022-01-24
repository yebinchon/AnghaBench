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
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 

__attribute__((used)) static void
FUNC4(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC2(pdev);
	struct jme_adapter *jme = FUNC1(netdev);

	FUNC0(jme);
	FUNC3(pdev, true);
}