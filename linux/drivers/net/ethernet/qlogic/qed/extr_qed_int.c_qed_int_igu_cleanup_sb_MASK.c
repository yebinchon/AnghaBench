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
typedef  int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int) ; 
 int /*<<< orphan*/  IGU_CLEANUP_CLEANUP_SET ; 
 int /*<<< orphan*/  IGU_CLEANUP_CLEANUP_TYPE ; 
 int /*<<< orphan*/  IGU_CLEANUP_COMMAND_TYPE ; 
 int IGU_CLEANUP_SLEEP_LENGTH ; 
 int IGU_CMD_INT_ACK_BASE ; 
 int IGU_COMMAND_TYPE_SET ; 
 int IGU_CTRL_CMD_TYPE_WR ; 
 int /*<<< orphan*/  IGU_CTRL_REG_FID ; 
 int /*<<< orphan*/  IGU_CTRL_REG_PXP_ADDR ; 
 int /*<<< orphan*/  IGU_CTRL_REG_TYPE ; 
 scalar_t__ IGU_REG_CLEANUP_STATUS_0 ; 
 int /*<<< orphan*/  IGU_REG_COMMAND_REG_32LSB_DATA ; 
 int /*<<< orphan*/  IGU_REG_COMMAND_REG_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt,
				   u16 igu_sb_id,
				   bool cleanup_set, u16 opaque_fid)
{
	u32 cmd_ctrl = 0, val = 0, sb_bit = 0, sb_bit_addr = 0, data = 0;
	u32 pxp_addr = IGU_CMD_INT_ACK_BASE + igu_sb_id;
	u32 sleep_cnt = IGU_CLEANUP_SLEEP_LENGTH;

	/* Set the data field */
	FUNC1(data, IGU_CLEANUP_CLEANUP_SET, cleanup_set ? 1 : 0);
	FUNC1(data, IGU_CLEANUP_CLEANUP_TYPE, 0);
	FUNC1(data, IGU_CLEANUP_COMMAND_TYPE, IGU_COMMAND_TYPE_SET);

	/* Set the control register */
	FUNC1(cmd_ctrl, IGU_CTRL_REG_PXP_ADDR, pxp_addr);
	FUNC1(cmd_ctrl, IGU_CTRL_REG_FID, opaque_fid);
	FUNC1(cmd_ctrl, IGU_CTRL_REG_TYPE, IGU_CTRL_CMD_TYPE_WR);

	FUNC4(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_32LSB_DATA, data);

	FUNC2();

	FUNC4(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_CTRL, cmd_ctrl);

	/* calculate where to read the status bit from */
	sb_bit = 1 << (igu_sb_id % 32);
	sb_bit_addr = igu_sb_id / 32 * sizeof(u32);

	sb_bit_addr += IGU_REG_CLEANUP_STATUS_0;

	/* Now wait for the command to complete */
	do {
		val = FUNC3(p_hwfn, p_ptt, sb_bit_addr);

		if ((val & sb_bit) == (cleanup_set ? sb_bit : 0))
			break;

		FUNC5(5000, 10000);
	} while (--sleep_cnt);

	if (!sleep_cnt)
		FUNC0(p_hwfn,
			  "Timeout waiting for clear status 0x%08x [for sb %d]\n",
			  val, igu_sb_id);
}