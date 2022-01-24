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
typedef  scalar_t__ u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags2; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ E1000_TIMINCA_INCVALUE_MASK ; 
 int FLAG2_CHECK_SYSTIM_OVERFLOW ; 
 int /*<<< orphan*/  SYSTIMH ; 
 int /*<<< orphan*/  SYSTIML ; 
 int FUNC0 (struct e1000_hw*,int,struct ptp_system_timestamp*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ptp_system_timestamp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptp_system_timestamp*) ; 

u64 FUNC4(struct e1000_adapter *adapter,
		       struct ptp_system_timestamp *sts)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 systimel, systimel_2, systimeh;
	u64 systim;
	/* SYSTIMH latching upon SYSTIML read does not work well.
	 * This means that if SYSTIML overflows after we read it but before
	 * we read SYSTIMH, the value of SYSTIMH has been incremented and we
	 * will experience a huge non linear increment in the systime value
	 * to fix that we test for overflow and if true, we re-read systime.
	 */
	FUNC3(sts);
	systimel = FUNC1(SYSTIML);
	FUNC2(sts);
	systimeh = FUNC1(SYSTIMH);
	/* Is systimel is so large that overflow is possible? */
	if (systimel >= (u32)0xffffffff - E1000_TIMINCA_INCVALUE_MASK) {
		FUNC3(sts);
		systimel_2 = FUNC1(SYSTIML);
		FUNC2(sts);
		if (systimel > systimel_2) {
			/* There was an overflow, read again SYSTIMH, and use
			 * systimel_2
			 */
			systimeh = FUNC1(SYSTIMH);
			systimel = systimel_2;
		}
	}
	systim = (u64)systimel;
	systim |= (u64)systimeh << 32;

	if (adapter->flags2 & FLAG2_CHECK_SYSTIM_OVERFLOW)
		systim = FUNC0(hw, systim, sts);

	return systim;
}