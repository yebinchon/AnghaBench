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
struct qed_hwfn {int /*<<< orphan*/  p_main_ptt; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_88_F0_BB ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_8C_F0_BB ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_90_F0_BB ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_94_F0_BB ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_E8_F0_K2 ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_EC_F0_K2 ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_F0_F0_K2 ; 
 int /*<<< orphan*/  PGLUE_B_REG_PGL_ADDR_F4_F0_K2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn)
{
	/* clear indirect access */
	if (FUNC0(p_hwfn->cdev)) {
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_E8_F0_K2, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_EC_F0_K2, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_F0_F0_K2, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_F4_F0_K2, 0);
	} else {
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_88_F0_BB, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_8C_F0_BB, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_90_F0_BB, 0);
		FUNC2(p_hwfn, p_hwfn->p_main_ptt,
		       PGLUE_B_REG_PGL_ADDR_94_F0_BB, 0);
	}

	/* Clean previous pglue_b errors if such exist */
	FUNC1(p_hwfn, p_hwfn->p_main_ptt);

	/* enable internal target-read */
	FUNC2(p_hwfn, p_hwfn->p_main_ptt,
	       PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);
}