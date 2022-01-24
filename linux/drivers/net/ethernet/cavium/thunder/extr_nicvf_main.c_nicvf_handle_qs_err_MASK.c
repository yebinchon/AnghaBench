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
typedef  int u64 ;
struct queue_set {int cq_cnt; int /*<<< orphan*/ * sq; } ;
struct nicvf {int /*<<< orphan*/  netdev; struct queue_set* qs; } ;

/* Variables and functions */
 int CQ_ERR_MASK ; 
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,struct queue_set*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct nicvf *nic = (struct nicvf *)data;
	struct queue_set *qs = nic->qs;
	int qidx;
	u64 status;

	FUNC0(nic->netdev);

	/* Check if it is CQ err */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
		status = FUNC6(nic, NIC_QSET_CQ_0_7_STATUS,
					      qidx);
		if (!(status & CQ_ERR_MASK))
			continue;
		/* Process already queued CQEs and reconfig CQ */
		FUNC4(nic, NICVF_INTR_CQ, qidx);
		FUNC7(nic, qidx);
		FUNC3(nic->netdev, qidx, NULL, 0);
		FUNC2(nic, qs, qidx, true);
		FUNC9(nic->netdev, &qs->sq[qidx], qidx);
		FUNC8(nic, &qs->sq[qidx], qidx);

		FUNC5(nic, NICVF_INTR_CQ, qidx);
	}

	FUNC1(nic->netdev);
	/* Re-enable Qset error interrupt */
	FUNC5(nic, NICVF_INTR_QS_ERR, 0);
}