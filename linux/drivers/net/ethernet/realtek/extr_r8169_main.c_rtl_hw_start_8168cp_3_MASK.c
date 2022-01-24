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
 int Beacon_en ; 
 int /*<<< orphan*/  Config3 ; 
 int /*<<< orphan*/  DBG_REG ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	FUNC2(tp);

	FUNC1(tp, Config3, FUNC0(tp, Config3) & ~Beacon_en);

	/* Magic. */
	FUNC1(tp, DBG_REG, 0x20);
}