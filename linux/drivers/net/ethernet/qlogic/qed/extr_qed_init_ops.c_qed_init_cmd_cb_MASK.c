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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct init_callback_op {int callback_id; } ;

/* Variables and functions */
#define  DMAE_READY_CB 128 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int EINVAL ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,char*) ; 

__attribute__((used)) static int FUNC2(struct qed_hwfn *p_hwfn,
			   struct qed_ptt *p_ptt,
			   struct init_callback_op *p_cmd)
{
	int rc;

	switch (p_cmd->callback_id) {
	case DMAE_READY_CB:
		rc = FUNC1(p_hwfn, p_ptt, "engine_phase");
		break;
	default:
		FUNC0(p_hwfn, "Unexpected init op callback ID %d\n",
			  p_cmd->callback_id);
		return -EINVAL;
	}

	return rc;
}