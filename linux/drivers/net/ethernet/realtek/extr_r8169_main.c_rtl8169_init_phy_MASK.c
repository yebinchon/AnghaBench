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
struct rtl8169_private {scalar_t__ mac_version; int /*<<< orphan*/  phydev; int /*<<< orphan*/  pci_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 scalar_t__ RTL_GIGA_MAC_VER_06 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct rtl8169_private *tp)
{
	FUNC5(dev);

	if (tp->mac_version <= RTL_GIGA_MAC_VER_06) {
		FUNC3(tp->pci_dev, PCI_LATENCY_TIMER, 0x40);
		FUNC3(tp->pci_dev, PCI_CACHE_LINE_SIZE, 0x08);
		FUNC2(tp, drv, dev,
			  "Set MAC Reg C+CR Offset 0x82h = 0x01h\n");
		FUNC0(tp, 0x82, 0x01);
	}

	/* We may have called phy_speed_down before */
	FUNC4(tp->phydev);

	FUNC1(tp->phydev);
}