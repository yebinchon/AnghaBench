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
struct mlx5e_xsk_param {scalar_t__ chunk_size; } ;
struct mlx5e_params {int rq_wq_type; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLX5E_MIN_XSK_CHUNK_SIZE ; 
#define  MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ 128 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int FUNC1 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int FUNC2 (struct mlx5_core_dev*,struct mlx5e_params*,struct mlx5e_xsk_param*) ; 

bool FUNC3(struct mlx5e_params *params,
			      struct mlx5e_xsk_param *xsk,
			      struct mlx5_core_dev *mdev)
{
	/* AF_XDP doesn't support frames larger than PAGE_SIZE. */
	if (xsk->chunk_size > PAGE_SIZE ||
			xsk->chunk_size < MLX5E_MIN_XSK_CHUNK_SIZE)
		return false;

	/* Current MTU and XSK headroom don't allow packets to fit the frames. */
	if (FUNC0(params, xsk) > xsk->chunk_size)
		return false;

	/* frag_sz is different for regular and XSK RQs, so ensure that linear
	 * SKB mode is possible.
	 */
	switch (params->rq_wq_type) {
	case MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ:
		return FUNC2(mdev, params, xsk);
	default: /* MLX5_WQ_TYPE_CYCLIC */
		return FUNC1(params, xsk);
	}
}