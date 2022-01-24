#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtl8169_private {TYPE_2__* phydev; int /*<<< orphan*/  napi; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  perm_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct rtl8169_private *tp = FUNC1(dev);

	if (FUNC6(tp))
		FUNC7(tp);

	FUNC2(&tp->napi);

	FUNC10(dev);
	FUNC0(tp->phydev->mdio.bus);

	FUNC9(tp);

	if (FUNC3(pdev))
		FUNC5(&pdev->dev);

	/* restore original MAC address */
	FUNC8(tp, dev->perm_addr);
}