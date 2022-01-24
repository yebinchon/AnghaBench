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
typedef  int u16 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPHYAR ; 
 int EPHYAR_DATA_MASK ; 
 int EPHYAR_REG_MASK ; 
 int EPHYAR_REG_SHIFT ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_ephyar_cond ; 
 scalar_t__ FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static u16 FUNC3(struct rtl8169_private *tp, int reg_addr)
{
	FUNC1(tp, EPHYAR, (reg_addr & EPHYAR_REG_MASK) << EPHYAR_REG_SHIFT);

	return FUNC2(tp, &rtl_ephyar_cond, 10, 100) ?
		FUNC0(tp, EPHYAR) & EPHYAR_DATA_MASK : ~0;
}