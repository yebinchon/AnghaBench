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
struct rtl8169_private {scalar_t__ irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrMask_8125 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	if (FUNC2(tp))
		FUNC1(tp, IntrMask_8125, 0);
	else
		FUNC0(tp, IntrMask, 0);
	tp->irq_enabled = 0;
}