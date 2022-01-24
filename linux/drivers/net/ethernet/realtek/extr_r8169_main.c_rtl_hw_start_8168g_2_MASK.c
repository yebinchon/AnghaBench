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
 int ASPM_en ; 
 int ClkReqEn ; 
 int /*<<< orphan*/  Config2 ; 
 int /*<<< orphan*/  Config5 ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168g_2[] = {
		{ 0x00, 0x0008,	0x0000 },
		{ 0x0c, 0x3ff0,	0x0820 },
		{ 0x19, 0xffff,	0x7c00 },
		{ 0x1e, 0xffff,	0x20eb },
		{ 0x0d, 0xffff,	0x1666 },
		{ 0x00, 0xffff,	0x10a3 },
		{ 0x06, 0xffff,	0xf050 },
		{ 0x04, 0x0000,	0x0010 },
		{ 0x1d, 0x4000,	0x0000 },
	};

	FUNC3(tp);

	/* disable aspm and clock request before access ephy */
	FUNC1(tp, Config2, FUNC0(tp, Config2) & ~ClkReqEn);
	FUNC1(tp, Config5, FUNC0(tp, Config5) & ~ASPM_en);
	FUNC2(tp, e_info_8168g_2);
}