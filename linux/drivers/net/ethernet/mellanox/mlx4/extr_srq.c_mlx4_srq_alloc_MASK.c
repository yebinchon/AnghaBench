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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_srq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx4_srq_context {int mtt_base_addr_h; int /*<<< orphan*/  db_rec_addr; void* pd; void* mtt_base_addr_l; scalar_t__ log_page_size; void* pg_offset_cqn; int /*<<< orphan*/  xrcd; scalar_t__ logstride; void* state_logsize_srqn; } ;
struct mlx4_srq {int srqn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; scalar_t__ wqe_shift; int /*<<< orphan*/  max; } ;
struct mlx4_mtt {scalar_t__ page_shift; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_srq_context* buf; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 scalar_t__ MLX4_ICM_PAGE_SHIFT ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int) ; 
 struct mlx4_cmd_mailbox* FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int FUNC10 (struct mlx4_dev*,struct mlx4_mtt*) ; 
 TYPE_1__* FUNC11 (struct mlx4_dev*) ; 
 int FUNC12 (struct mlx4_dev*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct mlx4_dev *dev, u32 pdn, u32 cqn, u16 xrcd,
		   struct mlx4_mtt *mtt, u64 db_rec, struct mlx4_srq *srq)
{
	struct mlx4_srq_table *srq_table = &FUNC11(dev)->srq_table;
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_srq_context *srq_context;
	u64 mtt_addr;
	int err;

	err = FUNC12(dev, &srq->srqn);
	if (err)
		return err;

	FUNC17(&srq_table->lock);
	err = FUNC15(&srq_table->tree, srq->srqn, srq);
	FUNC18(&srq_table->lock);
	if (err)
		goto err_icm;

	mailbox = FUNC8(dev);
	if (FUNC0(mailbox)) {
		err = FUNC1(mailbox);
		goto err_radix;
	}

	srq_context = mailbox->buf;
	srq_context->state_logsize_srqn = FUNC3((FUNC5(srq->max) << 24) |
						      srq->srqn);
	srq_context->logstride          = srq->wqe_shift - 4;
	srq_context->xrcd		= FUNC2(xrcd);
	srq_context->pg_offset_cqn	= FUNC3(cqn & 0xffffff);
	srq_context->log_page_size      = mtt->page_shift - MLX4_ICM_PAGE_SHIFT;

	mtt_addr = FUNC10(dev, mtt);
	srq_context->mtt_base_addr_h    = mtt_addr >> 32;
	srq_context->mtt_base_addr_l    = FUNC3(mtt_addr & 0xffffffff);
	srq_context->pd			= FUNC3(pdn);
	srq_context->db_rec_addr        = FUNC4(db_rec);

	err = FUNC7(dev, mailbox, srq->srqn);
	FUNC9(dev, mailbox);
	if (err)
		goto err_radix;

	FUNC16(&srq->refcount, 1);
	FUNC6(&srq->free);

	return 0;

err_radix:
	FUNC17(&srq_table->lock);
	FUNC14(&srq_table->tree, srq->srqn);
	FUNC18(&srq_table->lock);

err_icm:
	FUNC13(dev, srq->srqn);
	return err;
}