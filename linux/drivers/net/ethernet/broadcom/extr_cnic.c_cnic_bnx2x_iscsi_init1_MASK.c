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
struct kwqe {int dummy; } ;
struct iscsi_kwqe_init1 {int num_tasks_per_conn; int num_ccells_per_conn; int rq_num_wqes; int rq_buffer_size; int cq_num_wqes; int flags; int /*<<< orphan*/  num_cqs; } ;
struct cnic_local {int num_iscsi_tasks; int num_ccells; int task_array_size; int r2tq_size; int hq_size; int /*<<< orphan*/  num_cqs; } ;
struct cnic_dev {int /*<<< orphan*/  max_iscsi_conn; int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int /*<<< orphan*/  pfid; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int BNX2X_ISCSI_HQ_BD_SIZE ; 
 int BNX2X_ISCSI_MAX_PENDING_R2TS ; 
 int BNX2X_ISCSI_R2TQE_SIZE ; 
 int BNX2X_ISCSI_TASK_CONTEXT_SIZE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CNIC_PAGE_BITS ; 
 int CNIC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int ISCSI_KWQE_INIT1_DELAYED_ACK_ENABLE ; 
 int ISCSI_KWQE_INIT1_TIME_STAMPS_ENABLE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct cnic_dev*,int,int) ; 
 struct bnx2x* FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct cnic_dev *dev, struct kwqe *kwqe)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC26(dev->netdev);
	struct iscsi_kwqe_init1 *req1 = (struct iscsi_kwqe_init1 *) kwqe;
	int hq_bds, pages;
	u32 pfid = bp->pfid;

	cp->num_iscsi_tasks = req1->num_tasks_per_conn;
	cp->num_ccells = req1->num_ccells_per_conn;
	cp->task_array_size = BNX2X_ISCSI_TASK_CONTEXT_SIZE *
			      cp->num_iscsi_tasks;
	cp->r2tq_size = cp->num_iscsi_tasks * BNX2X_ISCSI_MAX_PENDING_R2TS *
			BNX2X_ISCSI_R2TQE_SIZE;
	cp->hq_size = cp->num_ccells * BNX2X_ISCSI_HQ_BD_SIZE;
	pages = FUNC0(cp->hq_size) / CNIC_PAGE_SIZE;
	hq_bds = pages * (CNIC_PAGE_SIZE / BNX2X_ISCSI_HQ_BD_SIZE);
	cp->num_cqs = req1->num_cqs;

	if (!dev->max_iscsi_conn)
		return 0;

	/* init Tstorm RAM */
	FUNC1(dev, BAR_TSTRORM_INTMEM + FUNC11(pfid),
		  req1->rq_num_wqes);
	FUNC1(dev, BAR_TSTRORM_INTMEM + FUNC10(pfid),
		  CNIC_PAGE_SIZE);
	FUNC2(dev, BAR_TSTRORM_INTMEM +
		 FUNC9(pfid), CNIC_PAGE_BITS);
	FUNC1(dev, BAR_TSTRORM_INTMEM +
		  FUNC8(pfid),
		  req1->num_tasks_per_conn);

	/* init Ustorm RAM */
	FUNC1(dev, BAR_USTRORM_INTMEM +
		  FUNC17(pfid),
		  req1->rq_buffer_size);
	FUNC1(dev, BAR_USTRORM_INTMEM + FUNC15(pfid),
		  CNIC_PAGE_SIZE);
	FUNC2(dev, BAR_USTRORM_INTMEM +
		 FUNC14(pfid), CNIC_PAGE_BITS);
	FUNC1(dev, BAR_USTRORM_INTMEM +
		  FUNC13(pfid),
		  req1->num_tasks_per_conn);
	FUNC1(dev, BAR_USTRORM_INTMEM + FUNC18(pfid),
		  req1->rq_num_wqes);
	FUNC1(dev, BAR_USTRORM_INTMEM + FUNC12(pfid),
		  req1->cq_num_wqes);
	FUNC1(dev, BAR_USTRORM_INTMEM + FUNC16(pfid),
		  cp->num_iscsi_tasks * BNX2X_ISCSI_MAX_PENDING_R2TS);

	/* init Xstorm RAM */
	FUNC1(dev, BAR_XSTRORM_INTMEM + FUNC22(pfid),
		  CNIC_PAGE_SIZE);
	FUNC2(dev, BAR_XSTRORM_INTMEM +
		 FUNC21(pfid), CNIC_PAGE_BITS);
	FUNC1(dev, BAR_XSTRORM_INTMEM +
		  FUNC20(pfid),
		  req1->num_tasks_per_conn);
	FUNC1(dev, BAR_XSTRORM_INTMEM + FUNC19(pfid),
		  hq_bds);
	FUNC1(dev, BAR_XSTRORM_INTMEM + FUNC24(pfid),
		  req1->num_tasks_per_conn);
	FUNC1(dev, BAR_XSTRORM_INTMEM + FUNC23(pfid),
		  cp->num_iscsi_tasks * BNX2X_ISCSI_MAX_PENDING_R2TS);

	/* init Cstorm RAM */
	FUNC1(dev, BAR_CSTRORM_INTMEM + FUNC7(pfid),
		  CNIC_PAGE_SIZE);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		 FUNC6(pfid), CNIC_PAGE_BITS);
	FUNC1(dev, BAR_CSTRORM_INTMEM +
		  FUNC5(pfid),
		  req1->num_tasks_per_conn);
	FUNC1(dev, BAR_CSTRORM_INTMEM + FUNC3(pfid),
		  req1->cq_num_wqes);
	FUNC1(dev, BAR_CSTRORM_INTMEM + FUNC4(pfid),
		  hq_bds);

	FUNC25(dev,
			req1->flags & ISCSI_KWQE_INIT1_TIME_STAMPS_ENABLE,
			req1->flags & ISCSI_KWQE_INIT1_DELAYED_ACK_ENABLE);

	return 0;
}