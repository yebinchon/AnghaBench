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
struct mlx5e_sq_param {int /*<<< orphan*/  is_mpw; void* sqc; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5e_params {int /*<<< orphan*/  log_sq_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PFLAG_XDP_TX_MPWQE ; 
 void* FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_sq_param*) ; 
 void* wq ; 

void FUNC4(struct mlx5e_priv *priv,
			     struct mlx5e_params *params,
			     struct mlx5e_sq_param *param)
{
	void *sqc = param->sqc;
	void *wq = FUNC1(sqc, sqc, wq);

	FUNC3(priv, param);
	FUNC2(wq, wq, log_wq_sz, params->log_sq_size);
	param->is_mpw = FUNC0(params, MLX5E_PFLAG_XDP_TX_MPWQE);
}