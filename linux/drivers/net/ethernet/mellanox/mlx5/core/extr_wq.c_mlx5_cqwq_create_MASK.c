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
typedef  int u8 ;
struct mlx5_wq_param {int /*<<< orphan*/  buf_numa_node; int /*<<< orphan*/  db_numa_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
struct TYPE_4__ {int /*<<< orphan*/  frags; } ;
struct mlx5_wq_ctrl {TYPE_2__ db; struct mlx5_core_dev* mdev; TYPE_1__ buf; } ;
struct mlx5_cqwq {int /*<<< orphan*/  fbc; int /*<<< orphan*/  db; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ CQE_STRIDE_64 ; 
 scalar_t__ FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqe_sz ; 
 int /*<<< orphan*/  log_cq_size ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_core_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,TYPE_2__*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct mlx5_core_dev *mdev, struct mlx5_wq_param *param,
		     void *cqc, struct mlx5_cqwq *wq,
		     struct mlx5_wq_ctrl *wq_ctrl)
{
	/* CQE_STRIDE_128 and CQE_STRIDE_128_PAD both mean 128B stride */
	u8 log_wq_stride = FUNC0(cqc, cqc, cqe_sz) == CQE_STRIDE_64 ? 6 : 7;
	u8 log_wq_sz     = FUNC0(cqc, cqc, log_cq_size);
	int err;

	err = FUNC2(mdev, &wq_ctrl->db, param->db_numa_node);
	if (err) {
		FUNC1(mdev, "mlx5_db_alloc_node() failed, %d\n", err);
		return err;
	}

	wq->db  = wq_ctrl->db.db;

	err = FUNC4(mdev, FUNC6(log_wq_sz, log_wq_stride),
				       &wq_ctrl->buf,
				       param->buf_numa_node);
	if (err) {
		FUNC1(mdev, "mlx5_frag_buf_alloc_node() failed, %d\n",
			       err);
		goto err_db_free;
	}

	FUNC5(wq_ctrl->buf.frags, log_wq_stride, log_wq_sz, &wq->fbc);

	wq_ctrl->mdev = mdev;

	return 0;

err_db_free:
	FUNC3(mdev, &wq_ctrl->db);

	return err;
}