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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct rtl8169_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 scalar_t__ FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp, u8 reg, u16 val)
{
	if (FUNC2(tp, reg) != val)
		FUNC0(tp, hw, tp->dev, "chipset not ready for firmware\n");
	else
		FUNC1(tp);
}