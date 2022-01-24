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

/* Variables and functions */
 scalar_t__ MLX5_MPWRQ_LOG_WQE_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

u8 FUNC2(struct mlx5e_params *params,
				struct mlx5e_xsk_param *xsk)
{
	u32 linear_frag_sz = FUNC0(params, xsk);

	return MLX5_MPWRQ_LOG_WQE_SZ - FUNC1(linear_frag_sz);
}