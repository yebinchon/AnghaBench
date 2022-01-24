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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 scalar_t__ PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct qed_hwfn *p_hwfn,
				       struct qed_ptt *p_ptt, u8 abs_vfid)
{
	FUNC0(p_hwfn, p_ptt,
	       PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR + (abs_vfid >> 5) * 4,
	       1 << (abs_vfid & 0x1f));
}