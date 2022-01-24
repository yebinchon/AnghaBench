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
struct timespec64 {int dummy; } ;
struct ptp_system_timestamp {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PRTTSYN_TIME_H ; 
 int /*<<< orphan*/  I40E_PRTTSYN_TIME_L ; 
 struct timespec64 FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ptp_system_timestamp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptp_system_timestamp*) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i40e_pf *pf, struct timespec64 *ts,
			  struct ptp_system_timestamp *sts)
{
	struct i40e_hw *hw = &pf->hw;
	u32 hi, lo;
	u64 ns;

	/* The timer latches on the lowest register read. */
	FUNC2(sts);
	lo = FUNC3(hw, I40E_PRTTSYN_TIME_L);
	FUNC1(sts);
	hi = FUNC3(hw, I40E_PRTTSYN_TIME_H);

	ns = (((u64)hi) << 32) | lo;

	*ts = FUNC0(ns);
}