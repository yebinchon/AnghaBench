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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ ; 
 scalar_t__ MLX5_MPWQE_LOG_NUM_STRIDES_BASE ; 
 scalar_t__ MLX5_MPWRQ_LOG_WQE_SZ ; 
 int /*<<< orphan*/  ext_stride_num_range ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct mlx5_core_dev *mdev,
				  struct mlx5e_params *params,
				  struct mlx5e_xsk_param *xsk)
{
	u32 linear_frag_sz = FUNC1(params, xsk);
	s8 signed_log_num_strides_param;
	u8 log_num_strides;

	if (!FUNC2(params, xsk))
		return false;

	if (FUNC3(linear_frag_sz) > MLX5_MAX_MPWQE_LOG_WQE_STRIDE_SZ)
		return false;

	if (FUNC0(mdev, ext_stride_num_range))
		return true;

	log_num_strides = MLX5_MPWRQ_LOG_WQE_SZ - FUNC3(linear_frag_sz);
	signed_log_num_strides_param =
		(s8)log_num_strides - MLX5_MPWQE_LOG_NUM_STRIDES_BASE;

	return signed_log_num_strides_param >= 0;
}