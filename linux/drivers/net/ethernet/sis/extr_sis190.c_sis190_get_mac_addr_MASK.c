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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int FUNC1 (struct pci_dev*,struct net_device*) ; 
 int FUNC2 (struct pci_dev*,struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, struct net_device *dev)
{
	int rc;

	rc = FUNC2(pdev, dev);
	if (rc < 0) {
		u8 reg;

		FUNC0(pdev, 0x73, &reg);

		if (reg & 0x00000001)
			rc = FUNC1(pdev, dev);
	}
	return rc;
}