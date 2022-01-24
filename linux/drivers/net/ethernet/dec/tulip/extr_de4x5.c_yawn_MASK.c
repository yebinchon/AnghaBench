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
typedef  int /*<<< orphan*/  u_long ;
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct de4x5_private {scalar_t__ chipset; scalar_t__ bus; int /*<<< orphan*/  gendev; } ;

/* Variables and functions */
 scalar_t__ DC21040 ; 
 scalar_t__ DC21140 ; 
 int /*<<< orphan*/  DE4X5_SICR ; 
 scalar_t__ EISA ; 
 int /*<<< orphan*/  PCI_CFDA_PSM ; 
 int /*<<< orphan*/  PCI_CFPM ; 
#define  SLEEP 130 
#define  SNOOZE 129 
#define  WAKEUP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct de4x5_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int const) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev, int state)
{
    struct de4x5_private *lp = FUNC1(dev);
    u_long iobase = dev->base_addr;

    if ((lp->chipset == DC21040) || (lp->chipset == DC21140)) return;

    if(lp->bus == EISA) {
	switch(state) {
	  case WAKEUP:
	    FUNC2(WAKEUP, PCI_CFPM);
	    FUNC0(10);
	    break;

	  case SNOOZE:
	    FUNC2(SNOOZE, PCI_CFPM);
	    break;

	  case SLEEP:
	    FUNC3(0, DE4X5_SICR);
	    FUNC2(SLEEP, PCI_CFPM);
	    break;
	}
    } else {
	struct pci_dev *pdev = FUNC5 (lp->gendev);
	switch(state) {
	  case WAKEUP:
	    FUNC4(pdev, PCI_CFDA_PSM, WAKEUP);
	    FUNC0(10);
	    break;

	  case SNOOZE:
	    FUNC4(pdev, PCI_CFDA_PSM, SNOOZE);
	    break;

	  case SLEEP:
	    FUNC3(0, DE4X5_SICR);
	    FUNC4(pdev, PCI_CFDA_PSM, SLEEP);
	    break;
	}
    }
}