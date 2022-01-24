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
typedef  int u32 ;
struct qed_tid_seg {scalar_t__ count; size_t type; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct qed_ilt_client_cfg {TYPE_1__ p_size; } ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {int* task_type_size; struct qed_ilt_client_cfg* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 size_t ILT_CLI_CDUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NUM_TASK_PF_SEGMENTS ; 
 int /*<<< orphan*/  QED_ILT ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_tid_seg* FUNC4 (struct qed_hwfn*,int) ; 

u32 FUNC5(struct qed_hwfn *p_hwfn, u32 used_lines)
{
	struct qed_ilt_client_cfg *p_cli;
	u32 excess_lines, available_lines;
	struct qed_cxt_mngr *p_mngr;
	u32 ilt_page_size, elem_size;
	struct qed_tid_seg *p_seg;
	int i;

	available_lines = FUNC3(p_hwfn, QED_ILT);
	excess_lines = used_lines - available_lines;

	if (!excess_lines)
		return 0;

	if (!FUNC2(p_hwfn))
		return 0;

	p_mngr = p_hwfn->p_cxt_mngr;
	p_cli = &p_mngr->clients[ILT_CLI_CDUT];
	ilt_page_size = FUNC1(p_cli->p_size.val);

	for (i = 0; i < NUM_TASK_PF_SEGMENTS; i++) {
		p_seg = FUNC4(p_hwfn, i);
		if (!p_seg || p_seg->count == 0)
			continue;

		elem_size = p_mngr->task_type_size[p_seg->type];
		if (!elem_size)
			continue;

		return (ilt_page_size / elem_size) * excess_lines;
	}

	FUNC0(p_hwfn, "failed computing excess ILT lines\n");
	return 0;
}