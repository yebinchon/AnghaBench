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
 int OOB_CMD_DRIVER_STOP ; 
 int FUNC0 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  rtl_ep_ocp_read_cond ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	FUNC2(tp);
	FUNC1(tp, 0x01, 0x180, OOB_CMD_DRIVER_STOP);
	FUNC1(tp, 0x01, 0x30,
			  FUNC0(tp, 0x01, 0x30) | 0x01);
	FUNC3(tp, &rtl_ep_ocp_read_cond, 10, 10);
}