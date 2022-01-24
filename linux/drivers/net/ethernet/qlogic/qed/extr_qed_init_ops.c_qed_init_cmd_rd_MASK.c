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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_read_op {int /*<<< orphan*/  op_data; int /*<<< orphan*/  expected_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
#define  INIT_POLL_AND 130 
#define  INIT_POLL_EQ 129 
 int INIT_POLL_NONE ; 
#define  INIT_POLL_OR 128 
 int /*<<< orphan*/  INIT_READ_OP_ADDRESS ; 
 int /*<<< orphan*/  INIT_READ_OP_POLL_TYPE ; 
 int QED_INIT_MAX_POLL_COUNT ; 
 int QED_INIT_POLL_PERIOD_US ; 
 int FUNC2 (u32,u32) ; 
 int FUNC3 (u32,u32) ; 
 int FUNC4 (u32,u32) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct qed_hwfn *p_hwfn,
			    struct qed_ptt *p_ptt, struct init_read_op *cmd)
{
	bool (*comp_check)(u32 val, u32 expected_val);
	u32 delay = QED_INIT_POLL_PERIOD_US, val;
	u32 data, addr, poll;
	int i;

	data = FUNC5(cmd->op_data);
	addr = FUNC1(data, INIT_READ_OP_ADDRESS) << 2;
	poll = FUNC1(data, INIT_READ_OP_POLL_TYPE);


	val = FUNC6(p_hwfn, p_ptt, addr);

	if (poll == INIT_POLL_NONE)
		return;

	switch (poll) {
	case INIT_POLL_EQ:
		comp_check = comp_eq;
		break;
	case INIT_POLL_OR:
		comp_check = comp_or;
		break;
	case INIT_POLL_AND:
		comp_check = comp_and;
		break;
	default:
		FUNC0(p_hwfn, "Invalid poll comparison type %08x\n",
		       cmd->op_data);
		return;
	}

	data = FUNC5(cmd->expected_val);
	for (i = 0;
	     i < QED_INIT_MAX_POLL_COUNT && !comp_check(val, data);
	     i++) {
		FUNC7(delay);
		val = FUNC6(p_hwfn, p_ptt, addr);
	}

	if (i == QED_INIT_MAX_POLL_COUNT) {
		FUNC0(p_hwfn,
		       "Timeout when polling reg: 0x%08x [ Waiting-for: %08x Got: %08x (comparison %08x)]\n",
		       addr, FUNC5(cmd->expected_val),
		       val, FUNC5(cmd->op_data));
	}
}