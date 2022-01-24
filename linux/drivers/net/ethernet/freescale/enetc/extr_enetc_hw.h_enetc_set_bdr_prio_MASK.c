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
typedef  int /*<<< orphan*/  u32 ;
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_TBMR ; 
 int /*<<< orphan*/  ENETC_TBMR_PRIO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct enetc_hw *hw, int bdr_idx,
				      int prio)
{
	u32 val = FUNC1(hw, bdr_idx, ENETC_TBMR);

	val &= ~ENETC_TBMR_PRIO_MASK;
	val |= FUNC0(prio);
	FUNC2(hw, bdr_idx, ENETC_TBMR, val);
}