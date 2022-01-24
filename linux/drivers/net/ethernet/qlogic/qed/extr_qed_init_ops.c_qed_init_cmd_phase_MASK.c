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
typedef  scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct init_if_phase_op {int /*<<< orphan*/  op_data; int /*<<< orphan*/  phase_data; } ;

/* Variables and functions */
 scalar_t__ ANY_PHASE_ID ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_IF_PHASE_OP_CMD_OFFSET ; 
 int /*<<< orphan*/  INIT_IF_PHASE_OP_PHASE ; 
 int /*<<< orphan*/  INIT_IF_PHASE_OP_PHASE_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct qed_hwfn *p_hwfn,
			      struct init_if_phase_op *p_cmd,
			      u32 phase, u32 phase_id)
{
	u32 data = FUNC1(p_cmd->phase_data);
	u32 op_data = FUNC1(p_cmd->op_data);

	if (!(FUNC0(data, INIT_IF_PHASE_OP_PHASE) == phase &&
	      (FUNC0(data, INIT_IF_PHASE_OP_PHASE_ID) == ANY_PHASE_ID ||
	       FUNC0(data, INIT_IF_PHASE_OP_PHASE_ID) == phase_id)))
		return FUNC0(op_data, INIT_IF_PHASE_OP_CMD_OFFSET);
	else
		return 0;
}