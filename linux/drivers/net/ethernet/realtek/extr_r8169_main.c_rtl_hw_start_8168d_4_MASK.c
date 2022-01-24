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
struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168d_4[] = {
		{ 0x0b, 0x0000,	0x0048 },
		{ 0x19, 0x0020,	0x0050 },
		{ 0x0c, 0x0100,	0x0020 },
		{ 0x10, 0x0004,	0x0000 },
	};

	FUNC2(tp);

	FUNC3(tp, PCI_EXP_DEVCTL_READRQ_4096B);

	FUNC1(tp, e_info_8168d_4);

	FUNC0(tp);
}