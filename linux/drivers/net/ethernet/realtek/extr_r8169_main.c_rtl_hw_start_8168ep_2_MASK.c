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
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,struct ephy_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	static const struct ephy_info e_info_8168ep_2[] = {
		{ 0x00, 0xffff,	0x10a3 },
		{ 0x19, 0xffff,	0xfc00 },
		{ 0x1e, 0xffff,	0x20ea }
	};

	/* disable aspm and clock request before access ephy */
	FUNC3(tp, false);
	FUNC2(tp, e_info_8168ep_2);

	FUNC4(tp);

	FUNC1(tp, DLLPR, FUNC0(tp, DLLPR) & ~PFM_EN);
	FUNC1(tp, MISC_1, FUNC0(tp, MISC_1) & ~PFM_D3COLD_EN);

	FUNC3(tp, true);
}