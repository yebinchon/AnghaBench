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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_hwfn {int /*<<< orphan*/  rel_pf_id; } ;

/* Variables and functions */
 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct qed_hwfn *p_hwfn, u16 prod)
{
	u32 addr = GTT_BAR0_MAP_REG_USDM_RAM +
		   FUNC1(p_hwfn->rel_pf_id);

	FUNC0(p_hwfn, addr, prod);
}