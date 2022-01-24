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
typedef  size_t u32 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {size_t chip_id; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/ * exists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX_DBG_RESET_REGS ; 
 int /*<<< orphan*/  SPLIT_TYPE_NONE ; 
 size_t FUNC1 (struct qed_hwfn*,struct qed_ptt*,size_t*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* s_reset_regs_defs ; 

__attribute__((used)) static u32 FUNC3(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt,
				   u32 *dump_buf, bool dump)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	u32 i, offset = 0, num_regs = 0;

	/* Calculate header size */
	offset += FUNC2(dump_buf,
					false, 0,
					SPLIT_TYPE_NONE, 0, NULL, NULL);

	/* Write reset registers */
	for (i = 0; i < MAX_DBG_RESET_REGS; i++) {
		if (!s_reset_regs_defs[i].exists[dev_data->chip_id])
			continue;

		offset += FUNC1(p_hwfn,
						 p_ptt,
						 dump_buf + offset,
						 dump,
						 FUNC0
						 (s_reset_regs_defs[i].addr), 1,
						 false, SPLIT_TYPE_NONE, 0);
		num_regs++;
	}

	/* Write header */
	if (dump)
		FUNC2(dump_buf,
				      true, num_regs, SPLIT_TYPE_NONE,
				      0, NULL, NULL);

	return offset;
}