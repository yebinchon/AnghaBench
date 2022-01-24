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
struct hinic_ctrl {int /*<<< orphan*/  ctrl_info; } ;
struct hinic_cmdq_wqe_scmd {struct hinic_ctrl ctrl; } ;
struct hinic_cmdq_direct_wqe {struct hinic_cmdq_wqe_scmd wqe_scmd; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_direct_wqe direct_wqe; } ;
struct hinic_cmdq {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  WQE_SCMD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_cmdq*,struct hinic_cmdq_wqe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hinic_cmdq *cmdq,
				struct hinic_cmdq_wqe *wqe)
{
	struct hinic_cmdq_direct_wqe *direct_wqe = &wqe->direct_wqe;
	struct hinic_cmdq_wqe_scmd *wqe_scmd;
	struct hinic_ctrl *ctrl;
	u32 ctrl_info;

	wqe_scmd = &direct_wqe->wqe_scmd;
	ctrl = &wqe_scmd->ctrl;
	ctrl_info = FUNC1(ctrl->ctrl_info);

	/* HW should toggle the HW BUSY BIT */
	if (!FUNC0(ctrl_info))
		return -EBUSY;

	FUNC2(cmdq, wqe);

	FUNC3(cmdq->wq, WQE_SCMD_SIZE);
	return 0;
}