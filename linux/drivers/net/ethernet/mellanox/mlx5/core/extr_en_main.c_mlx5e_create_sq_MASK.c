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
struct mlx5e_sq_param {int /*<<< orphan*/  sqc; } ;
struct mlx5e_create_sq_param {int tis_lst_sz; int tisn; int cqn; int min_inline_mode; TYPE_4__* wq_ctrl; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_7__ {TYPE_1__ bfreg; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_10__ {int npages; int page_shift; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;
struct TYPE_9__ {TYPE_5__ buf; TYPE_3__ db; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (void*,void*,void*) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_INLINE_MODE_VPORT_CONTEXT ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SQC_STATE_RST ; 
 int FUNC4 (void*) ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 int /*<<< orphan*/  cqn ; 
 void* create_sq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  flush_in_error_en ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  min_wqe_inline_mode ; 
 int FUNC8 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 void* pas ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  tis_lst_sz ; 
 int /*<<< orphan*/  tis_num_0 ; 
 int /*<<< orphan*/  uar_page ; 
 int /*<<< orphan*/  wq_type ; 
 int /*<<< orphan*/  wqe_inline_mode ; 

__attribute__((used)) static int FUNC10(struct mlx5_core_dev *mdev,
			   struct mlx5e_sq_param *param,
			   struct mlx5e_create_sq_param *csp,
			   u32 *sqn)
{
	void *in;
	void *sqc;
	void *wq;
	int inlen;
	int err;

	inlen = FUNC4(create_sq_in) +
		sizeof(u64) * csp->wq_ctrl->buf.npages;
	in = FUNC6(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	sqc = FUNC0(create_sq_in, in, ctx);
	wq = FUNC0(sqc, sqc, wq);

	FUNC7(sqc, param->sqc, sizeof(param->sqc));
	FUNC2(sqc,  sqc, tis_lst_sz, csp->tis_lst_sz);
	FUNC2(sqc,  sqc, tis_num_0, csp->tisn);
	FUNC2(sqc,  sqc, cqn, csp->cqn);

	if (FUNC1(mdev, wqe_inline_mode) == MLX5_CAP_INLINE_MODE_VPORT_CONTEXT)
		FUNC2(sqc,  sqc, min_wqe_inline_mode, csp->min_inline_mode);

	FUNC2(sqc,  sqc, state, MLX5_SQC_STATE_RST);
	FUNC2(sqc,  sqc, flush_in_error_en, 1);

	FUNC2(wq,   wq, wq_type,       MLX5_WQ_TYPE_CYCLIC);
	FUNC2(wq,   wq, uar_page,      mdev->mlx5e_res.bfreg.index);
	FUNC2(wq,   wq, log_wq_pg_sz,  csp->wq_ctrl->buf.page_shift -
					  MLX5_ADAPTER_PAGE_SHIFT);
	FUNC3(wq, wq, dbr_addr,      csp->wq_ctrl->db.dma);

	FUNC9(&csp->wq_ctrl->buf,
				  (__be64 *)FUNC0(wq, wq, pas));

	err = FUNC8(mdev, in, inlen, sqn);

	FUNC5(in);

	return err;
}