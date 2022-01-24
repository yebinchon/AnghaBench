#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx5e_rq_param {int /*<<< orphan*/  rqc; } ;
struct TYPE_10__ {int npages; scalar_t__ page_shift; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;
struct TYPE_9__ {TYPE_5__ buf; TYPE_3__ db; } ;
struct TYPE_6__ {scalar_t__ cqn; } ;
struct TYPE_7__ {TYPE_1__ mcq; } ;
struct mlx5e_rq {int /*<<< orphan*/  rqn; TYPE_4__ wq_ctrl; TYPE_2__ cq; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (void*,void*,void*) ; 
 scalar_t__ MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  cqn ; 
 void* create_rq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 void* pas ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int FUNC9(struct mlx5e_rq *rq,
			   struct mlx5e_rq_param *param)
{
	struct mlx5_core_dev *mdev = rq->mdev;

	void *in;
	void *rqc;
	void *wq;
	int inlen;
	int err;

	inlen = FUNC3(create_rq_in) +
		sizeof(u64) * rq->wq_ctrl.buf.npages;
	in = FUNC5(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	rqc = FUNC0(create_rq_in, in, ctx);
	wq  = FUNC0(rqc, rqc, wq);

	FUNC6(rqc, param->rqc, sizeof(param->rqc));

	FUNC1(rqc,  rqc, cqn,		rq->cq.mcq.cqn);
	FUNC1(rqc,  rqc, state,		MLX5_RQC_STATE_RST);
	FUNC1(wq,   wq,  log_wq_pg_sz,	rq->wq_ctrl.buf.page_shift -
						MLX5_ADAPTER_PAGE_SHIFT);
	FUNC2(wq, wq,  dbr_addr,		rq->wq_ctrl.db.dma);

	FUNC8(&rq->wq_ctrl.buf,
				  (__be64 *)FUNC0(wq, wq, pas));

	err = FUNC7(mdev, in, inlen, &rq->rqn);

	FUNC4(in);

	return err;
}