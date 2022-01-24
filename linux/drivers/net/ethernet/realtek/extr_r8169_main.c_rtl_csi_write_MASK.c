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
typedef  int u32 ;
struct rtl8169_private {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIAR ; 
 int CSIAR_ADDR_MASK ; 
 int CSIAR_BYTE_ENABLE ; 
 int CSIAR_WRITE_CMD ; 
 int /*<<< orphan*/  CSIDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_csiar_cond ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp, int addr, int value)
{
	u32 func = FUNC0(tp->pci_dev->devfn);

	FUNC1(tp, CSIDR, value);
	FUNC1(tp, CSIAR, CSIAR_WRITE_CMD | (addr & CSIAR_ADDR_MASK) |
		CSIAR_BYTE_ENABLE | func << 16);

	FUNC2(tp, &rtl_csiar_cond, 10, 100);
}