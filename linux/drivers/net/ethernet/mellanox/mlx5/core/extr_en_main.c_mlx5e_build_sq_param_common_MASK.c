#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf_numa_node; } ;
struct mlx5e_sq_param {TYPE_2__ wq; void* sqc; } ;
struct mlx5e_priv {TYPE_3__* mdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdn; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; TYPE_1__ mlx5e_res; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  pd ; 
 void* wq ; 

void FUNC4(struct mlx5e_priv *priv,
				 struct mlx5e_sq_param *param)
{
	void *sqc = param->sqc;
	void *wq = FUNC0(sqc, sqc, wq);

	FUNC1(wq, wq, log_wq_stride, FUNC3(MLX5_SEND_WQE_BB));
	FUNC1(wq, wq, pd,            priv->mdev->mlx5e_res.pdn);

	param->wq.buf_numa_node = FUNC2(priv->mdev->device);
}