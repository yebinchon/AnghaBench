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
struct ql3_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/ * small_buf_q_virt_addr; int /*<<< orphan*/  small_buf_q_alloc_phy_addr; int /*<<< orphan*/  small_buf_q_alloc_virt_addr; int /*<<< orphan*/  small_buf_q_alloc_size; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * lrg_buf_q_virt_addr; int /*<<< orphan*/  lrg_buf_q_alloc_phy_addr; int /*<<< orphan*/  lrg_buf_q_alloc_virt_addr; int /*<<< orphan*/  lrg_buf_q_alloc_size; int /*<<< orphan*/  lrg_buf; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ALLOC_BUFQS_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ql3_adapter *qdev)
{
	if (!FUNC4(QL_ALLOC_BUFQS_DONE, &qdev->flags)) {
		FUNC2(qdev->ndev, "Already done\n");
		return;
	}
	FUNC1(qdev->lrg_buf);
	FUNC3(qdev->pdev,
			    qdev->lrg_buf_q_alloc_size,
			    qdev->lrg_buf_q_alloc_virt_addr,
			    qdev->lrg_buf_q_alloc_phy_addr);

	qdev->lrg_buf_q_virt_addr = NULL;

	FUNC3(qdev->pdev,
			    qdev->small_buf_q_alloc_size,
			    qdev->small_buf_q_alloc_virt_addr,
			    qdev->small_buf_q_alloc_phy_addr);

	qdev->small_buf_q_virt_addr = NULL;

	FUNC0(QL_ALLOC_BUFQS_DONE, &qdev->flags);
}