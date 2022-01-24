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
 int /*<<< orphan*/  IBCR0 ; 
 int /*<<< orphan*/  IBCR2 ; 
 int /*<<< orphan*/  IBISR0 ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  rtl_ocp_tx_cond ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	FUNC1(tp, IBCR2, FUNC0(tp, IBCR2) & ~0x01);
	FUNC2(tp, &rtl_ocp_tx_cond, 50, 2000);
	FUNC1(tp, IBISR0, FUNC0(tp, IBISR0) | 0x20);
	FUNC1(tp, IBCR0, FUNC0(tp, IBCR0) & ~0x01);
}