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

/* Variables and functions */
 int R8168DP_1_MDIO_ACCESS_BIT ; 
 int FUNC0 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp)
{
	FUNC1(tp, 0xd0, FUNC0(tp, 0xd0) & ~R8168DP_1_MDIO_ACCESS_BIT);
}