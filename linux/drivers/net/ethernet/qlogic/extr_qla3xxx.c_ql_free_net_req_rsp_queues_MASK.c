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
struct ql3_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/ * rsp_q_virt_addr; int /*<<< orphan*/  rsp_q_phy_addr; int /*<<< orphan*/  rsp_q_size; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * req_q_virt_addr; int /*<<< orphan*/  req_q_phy_addr; int /*<<< orphan*/  req_q_size; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ALLOC_REQ_RSP_Q_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ql3_adapter *qdev)
{
	if (!FUNC3(QL_ALLOC_REQ_RSP_Q_DONE, &qdev->flags)) {
		FUNC1(qdev->ndev, "Already done\n");
		return;
	}

	FUNC2(qdev->pdev,
			    qdev->req_q_size,
			    qdev->req_q_virt_addr, qdev->req_q_phy_addr);

	qdev->req_q_virt_addr = NULL;

	FUNC2(qdev->pdev,
			    qdev->rsp_q_size,
			    qdev->rsp_q_virt_addr, qdev->rsp_q_phy_addr);

	qdev->rsp_q_virt_addr = NULL;

	FUNC0(QL_ALLOC_REQ_RSP_Q_DONE, &qdev->flags);
}