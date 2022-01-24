#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int vf_sbs_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int FUNC0 (struct bnx2x*) ; 
 TYPE_1__* FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int IGU_FID_ENCODE_IS_PF ; 
 int IGU_FID_PF_NUM_MASK ; 
 int IGU_FID_VF_NUM_MASK ; 
 scalar_t__ IGU_REG_MAPPING_MEMORY ; 
 int /*<<< orphan*/  IGU_REG_MAPPING_MEMORY_FID ; 
 int IGU_REG_MAPPING_MEMORY_SIZE ; 
 int IGU_REG_MAPPING_MEMORY_VALID ; 
 int /*<<< orphan*/  IGU_REG_MAPPING_MEMORY_VECTOR ; 
 int FUNC4 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct bnx2x *bp)
{
	int sb_id;
	u32 val;
	u8 fid, current_pf = 0;

	/* IGU in normal mode - read CAM */
	for (sb_id = 0; sb_id < IGU_REG_MAPPING_MEMORY_SIZE; sb_id++) {
		val = FUNC4(bp, IGU_REG_MAPPING_MEMORY + sb_id * 4);
		if (!(val & IGU_REG_MAPPING_MEMORY_VALID))
			continue;
		fid = FUNC3((val), IGU_REG_MAPPING_MEMORY_FID);
		if (fid & IGU_FID_ENCODE_IS_PF)
			current_pf = fid & IGU_FID_PF_NUM_MASK;
		else if (current_pf == FUNC0(bp))
			FUNC5(bp, sb_id,
					      (fid & IGU_FID_VF_NUM_MASK));
		FUNC2(BNX2X_MSG_IOV, "%s[%d], igu_sb_id=%d, msix=%d\n",
		   ((fid & IGU_FID_ENCODE_IS_PF) ? "PF" : "VF"),
		   ((fid & IGU_FID_ENCODE_IS_PF) ? (fid & IGU_FID_PF_NUM_MASK) :
		   (fid & IGU_FID_VF_NUM_MASK)), sb_id,
		   FUNC3((val), IGU_REG_MAPPING_MEMORY_VECTOR));
	}
	FUNC2(BNX2X_MSG_IOV, "vf_sbs_pool is %d\n", FUNC1(bp)->vf_sbs_pool);
	return FUNC1(bp)->vf_sbs_pool;
}