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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int PGLUE_B_REG_WAS_ERROR_VF_127_96_CLR ; 
 int PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR ; 
 int PGLUE_B_REG_WAS_ERROR_VF_63_32_CLR ; 
 int PGLUE_B_REG_WAS_ERROR_VF_95_64_CLR ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, u8 abs_vfid)
{
	u32 was_err_group = (2 * FUNC0(bp) + abs_vfid) >> 5;
	u32 was_err_reg = 0;

	switch (was_err_group) {
	case 0:
	    was_err_reg = PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR;
	    break;
	case 1:
	    was_err_reg = PGLUE_B_REG_WAS_ERROR_VF_63_32_CLR;
	    break;
	case 2:
	    was_err_reg = PGLUE_B_REG_WAS_ERROR_VF_95_64_CLR;
	    break;
	case 3:
	    was_err_reg = PGLUE_B_REG_WAS_ERROR_VF_127_96_CLR;
	    break;
	}
	FUNC1(bp, was_err_reg, 1 << (abs_vfid & 0x1f));
}