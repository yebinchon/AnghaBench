#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5_wq_param {int /*<<< orphan*/  buf_numa_node; int /*<<< orphan*/  db_numa_node; } ;
struct mlx5_frag_buf_ctrl {int sz_m1; } ;
struct mlx5_wq_ll {int /*<<< orphan*/ * tail_next; int /*<<< orphan*/  db; struct mlx5_frag_buf_ctrl fbc; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
struct TYPE_4__ {int /*<<< orphan*/  frags; } ;
struct mlx5_wq_ctrl {TYPE_2__ db; struct mlx5_core_dev* mdev; TYPE_1__ buf; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_wq_ll*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC3 (struct mlx5_core_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,TYPE_2__*) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_frag_buf_ctrl*) ; 
 struct mlx5_wqe_srq_next_seg* FUNC7 (struct mlx5_wq_ll*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct mlx5_core_dev *mdev, struct mlx5_wq_param *param,
		      void *wqc, struct mlx5_wq_ll *wq,
		      struct mlx5_wq_ctrl *wq_ctrl)
{
	u8 log_wq_stride = FUNC0(wq, wqc, log_wq_stride);
	u8 log_wq_sz     = FUNC0(wq, wqc, log_wq_sz);
	struct mlx5_frag_buf_ctrl *fbc = &wq->fbc;
	struct mlx5_wqe_srq_next_seg *next_seg;
	int err;
	int i;

	err = FUNC3(mdev, &wq_ctrl->db, param->db_numa_node);
	if (err) {
		FUNC2(mdev, "mlx5_db_alloc_node() failed, %d\n", err);
		return err;
	}

	wq->db  = wq_ctrl->db.db;

	err = FUNC5(mdev, FUNC8(log_wq_sz, log_wq_stride),
				       &wq_ctrl->buf, param->buf_numa_node);
	if (err) {
		FUNC2(mdev, "mlx5_frag_buf_alloc_node() failed, %d\n", err);
		goto err_db_free;
	}

	FUNC6(wq_ctrl->buf.frags, log_wq_stride, log_wq_sz, fbc);

	for (i = 0; i < fbc->sz_m1; i++) {
		next_seg = FUNC7(wq, i);
		next_seg->next_wqe_index = FUNC1(i + 1);
	}
	next_seg = FUNC7(wq, i);
	wq->tail_next = &next_seg->next_wqe_index;

	wq_ctrl->mdev = mdev;

	return 0;

err_db_free:
	FUNC4(mdev, &wq_ctrl->db);

	return err;
}