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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct qed_hwfn {int /*<<< orphan*/  rel_pf_id; } ;

/* Variables and functions */
 scalar_t__ MSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SEM_FAST_REG_INT_RAM ; 
 scalar_t__ TSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ XSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ YSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct qed_hwfn *p_hwfn, u8 storm_id)
{
	switch (storm_id) {
	case 0:
		return TSEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC2(p_hwfn->rel_pf_id);
	case 1:
		return MSEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC0(p_hwfn->rel_pf_id);
	case 2:
		return USEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC3(p_hwfn->rel_pf_id);
	case 3:
		return XSEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC4(p_hwfn->rel_pf_id);
	case 4:
		return YSEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC5(p_hwfn->rel_pf_id);
	case 5:
		return PSEM_REG_FAST_MEMORY + SEM_FAST_REG_INT_RAM +
		    FUNC1(p_hwfn->rel_pf_id);

	default:
		return 0;
	}
}