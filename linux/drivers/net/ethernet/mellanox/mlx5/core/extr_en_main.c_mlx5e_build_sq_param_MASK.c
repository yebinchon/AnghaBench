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
struct mlx5e_sq_param {void* sqc; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5e_params {int log_sq_size; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int,int) ; 
 int log_wq_sz ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,struct mlx5e_sq_param*) ; 
 void* wq ; 

__attribute__((used)) static void FUNC5(struct mlx5e_priv *priv,
				 struct mlx5e_params *params,
				 struct mlx5e_sq_param *param)
{
	void *sqc = param->sqc;
	void *wq = FUNC0(sqc, sqc, wq);
	bool allow_swp;

	allow_swp = FUNC3(priv->mdev) ||
		    !!FUNC1(priv->mdev);
	FUNC4(priv, param);
	FUNC2(wq, wq, log_wq_sz, params->log_sq_size);
	FUNC2(sqc, sqc, allow_swp, allow_swp);
}