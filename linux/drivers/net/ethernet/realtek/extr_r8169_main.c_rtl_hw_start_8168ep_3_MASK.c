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
 int /*<<< orphan*/  DLLPR ; 
 int /*<<< orphan*/  MISC_1 ; 
 int PFM_D3COLD_EN ; 
 int PFM_EN ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168ep_3[] = {
		{ 0x00, 0x0000,	0x0080 },
		{ 0x0d, 0x0100,	0x0200 },
		{ 0x19, 0x8021,	0x0000 },
		{ 0x1e, 0x0000,	0x2000 },
	};

	/* disable aspm and clock request before access ephy */
	FUNC4(tp, false);
	FUNC3(tp, e_info_8168ep_3);

	FUNC5(tp);

	FUNC1(tp, DLLPR, FUNC0(tp, DLLPR) & ~PFM_EN);
	FUNC1(tp, MISC_1, FUNC0(tp, MISC_1) & ~PFM_D3COLD_EN);

	FUNC2(tp, 0xd3e2, 0x0fff, 0x0271);
	FUNC2(tp, 0xd3e4, 0x00ff, 0x0000);
	FUNC2(tp, 0xe860, 0x0000, 0x0080);

	FUNC4(tp, true);
}