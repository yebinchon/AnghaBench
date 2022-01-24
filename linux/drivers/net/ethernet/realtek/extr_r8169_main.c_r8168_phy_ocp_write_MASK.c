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
typedef  int u32 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPHY_OCP ; 
 int OCPAR_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_ocp_gphy_cond ; 
 scalar_t__ FUNC1 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp, u32 reg, u32 data)
{
	if (FUNC1(tp, reg))
		return;

	FUNC0(tp, GPHY_OCP, OCPAR_FLAG | (reg << 15) | data);

	FUNC2(tp, &rtl_ocp_gphy_cond, 25, 10);
}