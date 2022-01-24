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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_LLH_CAM_MAX_PF_LINE ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int NIG_REG_LLH0_FUNC_MEM ; 
 scalar_t__ NIG_REG_LLH0_FUNC_MEM_ENABLE ; 
 int NIG_REG_LLH1_FUNC_MEM ; 
 scalar_t__ NIG_REG_LLH1_FUNC_MEM_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int*,int) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp,
				 bool add, unsigned char *dev_addr, int index)
{
	u32 wb_data[2];
	u32 reg_offset = FUNC0(bp) ? NIG_REG_LLH1_FUNC_MEM :
			 NIG_REG_LLH0_FUNC_MEM;

	if (!FUNC3(bp) && !FUNC2(bp))
		return;

	if (index > BNX2X_LLH_CAM_MAX_PF_LINE)
		return;

	FUNC1(BNX2X_MSG_SP, "Going to %s LLH configuration at entry %d\n",
			 (add ? "ADD" : "DELETE"), index);

	if (add) {
		/* LLH_FUNC_MEM is a u64 WB register */
		reg_offset += 8*index;

		wb_data[0] = ((dev_addr[2] << 24) | (dev_addr[3] << 16) |
			      (dev_addr[4] <<  8) |  dev_addr[5]);
		wb_data[1] = ((dev_addr[0] <<  8) |  dev_addr[1]);

		FUNC5(bp, reg_offset, wb_data, 2);
	}

	FUNC4(bp, (FUNC0(bp) ? NIG_REG_LLH1_FUNC_MEM_ENABLE :
				  NIG_REG_LLH0_FUNC_MEM_ENABLE) + 4*index, add);
}