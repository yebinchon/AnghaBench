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
typedef  int u8 ;
struct rtl8169_private {scalar_t__ mac_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC0 ; 
 int /*<<< orphan*/  MAC4 ; 
 scalar_t__ RTL_GIGA_MAC_VER_34 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC7(struct rtl8169_private *tp, u8 *addr)
{
	FUNC3(tp);

	FUNC5(tp);

	FUNC1(tp, MAC4, addr[4] | addr[5] << 8);
	FUNC0(tp, MAC4);

	FUNC1(tp, MAC0, addr[0] | addr[1] << 8 | addr[2] << 16 | addr[3] << 24);
	FUNC0(tp, MAC0);

	if (tp->mac_version == RTL_GIGA_MAC_VER_34)
		FUNC4(tp, addr);

	FUNC2(tp);

	FUNC6(tp);
}