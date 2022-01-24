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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5e_sq_param {void* sqc; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_sq_param*) ; 
 int /*<<< orphan*/  reg_umr ; 
 int /*<<< orphan*/  reg_umr_sq ; 
 void* wq ; 

void FUNC4(struct mlx5e_priv *priv,
			     u8 log_wq_size,
			     struct mlx5e_sq_param *param)
{
	void *sqc = param->sqc;
	void *wq = FUNC0(sqc, sqc, wq);

	FUNC3(priv, param);

	FUNC2(wq, wq, log_wq_sz, log_wq_size);
	FUNC2(sqc, sqc, reg_umr, FUNC1(priv->mdev, reg_umr_sq));
}