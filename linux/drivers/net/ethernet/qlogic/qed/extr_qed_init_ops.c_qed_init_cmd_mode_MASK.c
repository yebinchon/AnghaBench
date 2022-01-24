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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_hwfn {int dummy; } ;
struct init_if_mode_op {int /*<<< orphan*/  op_data; int /*<<< orphan*/  modes_buf_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_IF_MODE_OP_CMD_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC4(struct qed_hwfn *p_hwfn,
			     struct init_if_mode_op *p_cmd, int modes)
{
	u16 offset = FUNC1(p_cmd->modes_buf_offset);

	if (FUNC3(p_hwfn, &offset, modes))
		return 0;
	else
		return FUNC0(FUNC2(p_cmd->op_data),
				 INIT_IF_MODE_OP_CMD_OFFSET);
}