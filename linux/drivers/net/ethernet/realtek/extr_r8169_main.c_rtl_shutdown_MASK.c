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
struct rtl8169_private {scalar_t__ saved_wolopts; } ;
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC1(pdev);
	struct rtl8169_private *tp = FUNC0(dev);

	FUNC5(dev);

	/* Restore original MAC address */
	FUNC6(tp, dev->perm_addr);

	FUNC4(tp);

	if (system_state == SYSTEM_POWER_OFF) {
		if (tp->saved_wolopts) {
			FUNC8(tp);
			FUNC7(tp);
		}

		FUNC3(pdev, true);
		FUNC2(pdev, PCI_D3hot);
	}
}