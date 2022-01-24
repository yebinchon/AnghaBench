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
typedef  int u64 ;
typedef  int u32 ;
struct rtl8169_private {scalar_t__ counters_phys_addr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CounterAddrHigh ; 
 int /*<<< orphan*/  CounterAddrLow ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_counters_cond ; 
 int FUNC3 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static bool FUNC4(struct rtl8169_private *tp, u32 counter_cmd)
{
	dma_addr_t paddr = tp->counters_phys_addr;
	u32 cmd;

	FUNC2(tp, CounterAddrHigh, (u64)paddr >> 32);
	FUNC1(tp, CounterAddrHigh);
	cmd = (u64)paddr & FUNC0(32);
	FUNC2(tp, CounterAddrLow, cmd);
	FUNC2(tp, CounterAddrLow, cmd | counter_cmd);

	return FUNC3(tp, &rtl_counters_cond, 10, 1000);
}