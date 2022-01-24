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
struct rtl8169_private {scalar_t__ mac_version; int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EarlySize ; 
 int /*<<< orphan*/  IntrMitigate ; 
 int /*<<< orphan*/  MaxTxPacketSize ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_NOSNOOP_EN ; 
 scalar_t__ RTL_GIGA_MAC_VER_13 ; 
 scalar_t__ RTL_GIGA_MAC_VER_16 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TxPacketMax ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 scalar_t__ FUNC4 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	if (tp->mac_version == RTL_GIGA_MAC_VER_13 ||
	    tp->mac_version == RTL_GIGA_MAC_VER_16)
		FUNC2(tp->pci_dev, PCI_EXP_DEVCTL,
					 PCI_EXP_DEVCTL_NOSNOOP_EN);

	if (FUNC4(tp))
		FUNC1(tp, MaxTxPacketSize, EarlySize);
	else
		FUNC1(tp, MaxTxPacketSize, TxPacketMax);

	FUNC3(tp);

	/* disable interrupt coalescing */
	FUNC0(tp, IntrMitigate, 0x0000);
}