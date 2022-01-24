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
struct rtl8169_private {scalar_t__ mac_version; int cp_cmd; int /*<<< orphan*/  dev; int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPlusCmd ; 
 int /*<<< orphan*/  EarlyTxThres ; 
 int /*<<< orphan*/  IntrMitigate ; 
 int /*<<< orphan*/  NoEarlyTx ; 
 int PCIMulRW ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 scalar_t__ RTL_GIGA_MAC_VER_02 ; 
 scalar_t__ RTL_GIGA_MAC_VER_03 ; 
 scalar_t__ RTL_GIGA_MAC_VER_05 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RxMissed ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	if (tp->mac_version == RTL_GIGA_MAC_VER_05)
		FUNC4(tp->pci_dev, PCI_CACHE_LINE_SIZE, 0x08);

	FUNC2(tp, EarlyTxThres, NoEarlyTx);

	tp->cp_cmd |= PCIMulRW;

	if (tp->mac_version == RTL_GIGA_MAC_VER_02 ||
	    tp->mac_version == RTL_GIGA_MAC_VER_03) {
		FUNC3(tp, drv, tp->dev,
			  "Set MAC Reg C+CR Offset 0xe0. Bit 3 and Bit 14 MUST be 1\n");
		tp->cp_cmd |= (1 << 14);
	}

	FUNC0(tp, CPlusCmd, tp->cp_cmd);

	FUNC5(tp, tp->mac_version);

	FUNC1(tp, RxMissed, 0);

	/* disable interrupt coalescing */
	FUNC0(tp, IntrMitigate, 0x0000);
}