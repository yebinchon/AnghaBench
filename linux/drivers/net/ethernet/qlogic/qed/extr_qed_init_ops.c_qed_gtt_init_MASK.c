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
typedef  size_t u32 ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 size_t PXP_GLOBAL_ENTRY_SIZE ; 
 size_t PXP_PF_WINDOW_ADMIN_GLOBAL_START ; 
 size_t PXP_PF_WINDOW_ADMIN_START ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,size_t,scalar_t__) ; 
 scalar_t__* pxp_global_win ; 

void FUNC2(struct qed_hwfn *p_hwfn)
{
	u32 gtt_base;
	u32 i;

	/* Set the global windows */
	gtt_base = PXP_PF_WINDOW_ADMIN_START + PXP_PF_WINDOW_ADMIN_GLOBAL_START;

	for (i = 0; i < FUNC0(pxp_global_win); i++)
		if (pxp_global_win[i])
			FUNC1(p_hwfn, gtt_base + i * PXP_GLOBAL_ENTRY_SIZE,
			       pxp_global_win[i]);
}