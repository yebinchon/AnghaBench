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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_cq_param {int cq_period_mode; int /*<<< orphan*/  cqc; int /*<<< orphan*/  eq_ix; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;
struct TYPE_10__ {int npages; int page_shift; } ;
struct TYPE_9__ {TYPE_3__ db; TYPE_5__ buf; } ;
struct mlx5_core_cq {int dummy; } ;
struct mlx5e_cq {TYPE_4__ wq_ctrl; struct mlx5_core_cq mcq; struct mlx5_core_dev* mdev; } ;
struct TYPE_7__ {TYPE_1__* uar; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_6__ {int index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_eqn ; 
 int /*<<< orphan*/  cq_context ; 
 int /*<<< orphan*/  cq_period_mode ; 
 int /*<<< orphan*/  create_cq_in ; 
 int /*<<< orphan*/  create_cq_out ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx5_core_dev*,struct mlx5_core_cq*,void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_cq*) ; 
 int /*<<< orphan*/  pas ; 
 int /*<<< orphan*/  uar_page ; 

__attribute__((used)) static int FUNC12(struct mlx5e_cq *cq, struct mlx5e_cq_param *param)
{
	u32 out[FUNC4(create_cq_out)];
	struct mlx5_core_dev *mdev = cq->mdev;
	struct mlx5_core_cq *mcq = &cq->mcq;

	void *in;
	void *cqc;
	int inlen;
	unsigned int irqn_not_used;
	int eqn;
	int err;

	err = FUNC10(mdev, param->eq_ix, &eqn, &irqn_not_used);
	if (err)
		return err;

	inlen = FUNC3(create_cq_in) +
		sizeof(u64) * cq->wq_ctrl.buf.npages;
	in = FUNC6(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	cqc = FUNC0(create_cq_in, in, cq_context);

	FUNC7(cqc, param->cqc, sizeof(param->cqc));

	FUNC9(&cq->wq_ctrl.buf,
				  (__be64 *)FUNC0(create_cq_in, in, pas));

	FUNC1(cqc,   cqc, cq_period_mode, param->cq_period_mode);
	FUNC1(cqc,   cqc, c_eqn,         eqn);
	FUNC1(cqc,   cqc, uar_page,      mdev->priv.uar->index);
	FUNC1(cqc,   cqc, log_page_size, cq->wq_ctrl.buf.page_shift -
					    MLX5_ADAPTER_PAGE_SHIFT);
	FUNC2(cqc, cqc, dbr_addr,      cq->wq_ctrl.db.dma);

	err = FUNC8(mdev, mcq, in, inlen, out, sizeof(out));

	FUNC5(in);

	if (err)
		return err;

	FUNC11(cq);

	return 0;
}