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
struct TYPE_2__ {int /*<<< orphan*/  buf_numa_node; } ;
struct mlx5e_rq_param {TYPE_1__ wq; void* rqc; } ;
struct mlx5e_priv {int /*<<< orphan*/  drop_rq_q_counter; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_WQ_TYPE_CYCLIC ; 
 int /*<<< orphan*/  counter_set_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* wq ; 
 int /*<<< orphan*/  wq_type ; 

__attribute__((used)) static void FUNC4(struct mlx5e_priv *priv,
				      struct mlx5e_rq_param *param)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	void *rqc = param->rqc;
	void *wq = FUNC0(rqc, rqc, wq);

	FUNC1(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	FUNC1(wq, wq, log_wq_stride,
		 FUNC3(MLX5_WQ_TYPE_CYCLIC, 1));
	FUNC1(rqc, rqc, counter_set_id, priv->drop_rq_q_counter);

	param->wq.buf_numa_node = FUNC2(mdev->device);
}