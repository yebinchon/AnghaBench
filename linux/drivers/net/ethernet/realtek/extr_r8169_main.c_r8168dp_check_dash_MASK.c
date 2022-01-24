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
typedef  int /*<<< orphan*/  u16 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8169_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 

__attribute__((used)) static bool FUNC2(struct rtl8169_private *tp)
{
	u16 reg = FUNC1(tp);

	return !!(FUNC0(tp, 0x0f, reg) & 0x00008000);
}