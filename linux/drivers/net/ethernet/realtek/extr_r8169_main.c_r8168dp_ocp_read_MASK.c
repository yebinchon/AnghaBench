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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCPAR ; 
 int /*<<< orphan*/  OCPDR ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_ocpar_cond ; 
 scalar_t__ FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static u32 FUNC3(struct rtl8169_private *tp, u8 mask, u16 reg)
{
	FUNC1(tp, OCPAR, ((u32)mask & 0x0f) << 12 | (reg & 0x0fff));
	return FUNC2(tp, &rtl_ocpar_cond, 100, 20) ?
		FUNC0(tp, OCPDR) : ~0;
}