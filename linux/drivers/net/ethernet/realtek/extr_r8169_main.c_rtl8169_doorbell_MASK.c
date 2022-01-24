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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPQ ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TxPoll ; 
 int /*<<< orphan*/  TxPoll_8125 ; 
 scalar_t__ FUNC3 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	if (FUNC3(tp))
		FUNC1(tp, TxPoll_8125, FUNC0(0));
	else
		FUNC2(tp, TxPoll, NPQ);
}