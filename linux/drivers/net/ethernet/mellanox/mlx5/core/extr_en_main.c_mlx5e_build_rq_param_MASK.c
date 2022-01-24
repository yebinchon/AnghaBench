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
struct mlx5e_xsk_param {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf_numa_node; } ;
struct TYPE_6__ {int num_frags; } ;
struct mlx5e_rq_param {TYPE_2__ wq; TYPE_3__ frags_info; void* rqc; } ;
struct mlx5e_priv {int q_counter; struct mlx5_core_dev* mdev; } ;
struct mlx5e_params {int rq_wq_type; int log_rq_mtu_frames; int vlan_strip_disable; int scatter_fcs_en; } ;
struct TYPE_4__ {int pdn; } ;
struct mlx5_core_dev {int /*<<< orphan*/  device; TYPE_1__ mlx5e_res; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int MLX5_MPWQE_LOG_NUM_STRIDES_BASE ; 
 int MLX5_MPWQE_LOG_STRIDE_SZ_BASE ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int MLX5_WQ_END_PAD_MODE_ALIGN ; 
#define  MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ 128 
 int /*<<< orphan*/  counter_set_id ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_padding_mode ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  log_wqe_num_of_strides ; 
 int /*<<< orphan*/  log_wqe_stride_size ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*,TYPE_3__*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int FUNC6 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int FUNC7 (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  scatter_fcs ; 
 int /*<<< orphan*/  vsd ; 
 void* wq ; 
 int /*<<< orphan*/  wq_type ; 

void FUNC8(struct mlx5e_priv *priv,
			  struct mlx5e_params *params,
			  struct mlx5e_xsk_param *xsk,
			  struct mlx5e_rq_param *param)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	void *rqc = param->rqc;
	void *wq = FUNC0(rqc, rqc, wq);
	int ndsegs = 1;

	switch (params->rq_wq_type) {
	case MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ:
		FUNC1(wq, wq, log_wqe_num_of_strides,
			 FUNC5(mdev, params, xsk) -
			 MLX5_MPWQE_LOG_NUM_STRIDES_BASE);
		FUNC1(wq, wq, log_wqe_stride_size,
			 FUNC7(mdev, params, xsk) -
			 MLX5_MPWQE_LOG_STRIDE_SZ_BASE);
		FUNC1(wq, wq, log_wq_sz, FUNC6(params, xsk));
		break;
	default: /* MLX5_WQ_TYPE_CYCLIC */
		FUNC1(wq, wq, log_wq_sz, params->log_rq_mtu_frames);
		FUNC3(mdev, params, xsk, &param->frags_info);
		ndsegs = param->frags_info.num_frags;
	}

	FUNC1(wq, wq, wq_type,          params->rq_wq_type);
	FUNC1(wq, wq, end_padding_mode, MLX5_WQ_END_PAD_MODE_ALIGN);
	FUNC1(wq, wq, log_wq_stride,
		 FUNC4(params->rq_wq_type, ndsegs));
	FUNC1(wq, wq, pd,               mdev->mlx5e_res.pdn);
	FUNC1(rqc, rqc, counter_set_id, priv->q_counter);
	FUNC1(rqc, rqc, vsd,            params->vlan_strip_disable);
	FUNC1(rqc, rqc, scatter_fcs,    params->scatter_fcs_en);

	param->wq.buf_numa_node = FUNC2(mdev->device);
}