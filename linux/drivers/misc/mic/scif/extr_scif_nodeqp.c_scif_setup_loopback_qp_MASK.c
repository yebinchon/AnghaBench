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
struct scif_qp {int /*<<< orphan*/  local_write; int /*<<< orphan*/  local_read; int /*<<< orphan*/  inbound_q; int /*<<< orphan*/  outbound_q; int /*<<< orphan*/  recv_lock; int /*<<< orphan*/  send_lock; int /*<<< orphan*/  magic; } ;
struct scif_dev {int node; struct scif_qp* qpairs; } ;
struct TYPE_2__ {int nodeid; int /*<<< orphan*/  loopb_wq; struct scif_dev* loopb_dev; int /*<<< orphan*/  loopb_work; int /*<<< orphan*/  loopb_wqname; int /*<<< orphan*/  loopb_recv_q; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIFEP_MAGIC ; 
 int SCIF_NODE_QP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct scif_qp*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scif_dev*) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  scif_loopb_wq_handler ; 
 int /*<<< orphan*/  FUNC8 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct scif_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct scif_dev *scifdev)
{
	int err = 0;
	void *local_q;
	struct scif_qp *qp;

	err = FUNC10(scifdev);
	if (err)
		goto exit;
	FUNC0(&scif_info.loopb_recv_q);
	FUNC11(scif_info.loopb_wqname, sizeof(scif_info.loopb_wqname),
		 "SCIF LOOPB %d", scifdev->node);
	scif_info.loopb_wq =
		FUNC2(scif_info.loopb_wqname, 0);
	if (!scif_info.loopb_wq) {
		err = -ENOMEM;
		goto destroy_intr;
	}
	FUNC1(&scif_info.loopb_work, scif_loopb_wq_handler);
	/* Allocate Self Qpair */
	scifdev->qpairs = FUNC6(sizeof(*scifdev->qpairs), GFP_KERNEL);
	if (!scifdev->qpairs) {
		err = -ENOMEM;
		goto destroy_loopb_wq;
	}

	qp = scifdev->qpairs;
	qp->magic = SCIFEP_MAGIC;
	FUNC12(&qp->send_lock);
	FUNC12(&qp->recv_lock);

	local_q = FUNC6(SCIF_NODE_QP_SIZE, GFP_KERNEL);
	if (!local_q) {
		err = -ENOMEM;
		goto free_qpairs;
	}
	/*
	 * For loopback the inbound_q and outbound_q are essentially the same
	 * since the Node sends a message on the loopback interface to the
	 * outbound_q which is then received on the inbound_q.
	 */
	FUNC9(&qp->outbound_q,
		     &qp->local_read,
		     &qp->local_write,
		     local_q, FUNC4(SCIF_NODE_QP_SIZE));

	FUNC9(&qp->inbound_q,
		     &qp->local_read,
		     &qp->local_write,
		     local_q, FUNC4(SCIF_NODE_QP_SIZE));
	scif_info.nodeid = scifdev->node;

	FUNC8(scifdev);

	scif_info.loopb_dev = scifdev;
	return err;
free_qpairs:
	FUNC5(scifdev->qpairs);
destroy_loopb_wq:
	FUNC3(scif_info.loopb_wq);
destroy_intr:
	FUNC7(scifdev);
exit:
	return err;
}