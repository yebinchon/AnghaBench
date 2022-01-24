#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ cq_period_mode; } ;
struct mlx5e_params {TYPE_1__ tx_cq_moderation; scalar_t__ tx_dim_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_PFLAG_TX_CQE_BASED_MODER ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_CQE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5e_params *params, u8 cq_period_mode)
{
	if (params->tx_dim_enabled) {
		u8 dim_period_mode = FUNC1(cq_period_mode);

		params->tx_cq_moderation = FUNC3(dim_period_mode);
	} else {
		params->tx_cq_moderation = FUNC2(cq_period_mode);
	}

	FUNC0(params, MLX5E_PFLAG_TX_CQE_BASED_MODER,
			params->tx_cq_moderation.cq_period_mode ==
				MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
}