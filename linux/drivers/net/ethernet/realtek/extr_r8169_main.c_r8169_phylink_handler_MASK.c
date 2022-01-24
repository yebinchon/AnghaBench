#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtl8169_private {int /*<<< orphan*/  phydev; TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct rtl8169_private *tp = FUNC1(ndev);

	if (FUNC2(ndev)) {
		FUNC6(tp);
		FUNC4(&tp->pci_dev->dev);
	} else {
		FUNC5(&tp->pci_dev->dev);
	}

	if (FUNC0())
		FUNC3(tp->phydev);
}