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
struct mlx5e_params {scalar_t__ rq_wq_type; int /*<<< orphan*/  log_rq_mtu_frames; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_CQE_COMPRESS ; 
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx5_core_dev *mdev,
			       struct mlx5e_params *params)
{
	params->log_rq_mtu_frames = FUNC2() ?
		MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE :
		MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE;

	FUNC3(mdev, "MLX5E: StrdRq(%d) RqSz(%ld) StrdSz(%ld) RxCqeCmprss(%d)\n",
		       params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ,
		       params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ?
		       FUNC0(FUNC4(params, NULL)) :
		       FUNC0(params->log_rq_mtu_frames),
		       FUNC0(FUNC5(mdev, params, NULL)),
		       FUNC1(params, MLX5E_PFLAG_RX_CQE_COMPRESS));
}