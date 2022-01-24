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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int /*<<< orphan*/  sw_mtu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5e_params*,struct mlx5e_xsk_param*) ; 

u32 FUNC2(struct mlx5e_params *params,
			     struct mlx5e_xsk_param *xsk)
{
	u32 hw_mtu = FUNC0(params, params->sw_mtu);
	u16 linear_rq_headroom = FUNC1(params, xsk);

	return linear_rq_headroom + hw_mtu;
}