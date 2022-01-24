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
typedef  int /*<<< orphan*/  u16 ;
struct hinic_status {int /*<<< orphan*/  status_info; } ;
struct hinic_ctrl {int /*<<< orphan*/  ctrl_info; } ;
struct hinic_cmdq_wqe_lcmd {struct hinic_ctrl ctrl; struct hinic_status status; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
struct hinic_cmdq {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  WQE_LCMD_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_cmdq*,struct hinic_cmdq_wqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_cmdq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hinic_cmdq *cmdq, u16 ci,
				struct hinic_cmdq_wqe *cmdq_wqe)
{
	struct hinic_cmdq_wqe_lcmd *wqe_lcmd = &cmdq_wqe->wqe_lcmd;
	struct hinic_status *status = &wqe_lcmd->status;
	struct hinic_ctrl *ctrl = &wqe_lcmd->ctrl;
	int errcode;

	if (!FUNC0(FUNC2(ctrl->ctrl_info)))
		return -EBUSY;

	errcode = FUNC1(FUNC2(status->status_info), VAL);

	FUNC4(cmdq, ci, errcode);

	FUNC3(cmdq, cmdq_wqe);
	FUNC5(cmdq->wq, WQE_LCMD_SIZE);
	return 0;
}