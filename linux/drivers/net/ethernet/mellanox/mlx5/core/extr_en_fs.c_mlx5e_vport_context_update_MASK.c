#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_l2_table {int /*<<< orphan*/  promisc_enabled; int /*<<< orphan*/  allmulti_enabled; } ;
struct TYPE_2__ {struct mlx5e_l2_table l2; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; TYPE_1__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_NVPRT_LIST_TYPE_MC ; 
 int /*<<< orphan*/  MLX5_NVPRT_LIST_TYPE_UC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5e_l2_table *ea = &priv->fs.l2;

	FUNC1(priv, MLX5_NVPRT_LIST_TYPE_UC);
	FUNC1(priv, MLX5_NVPRT_LIST_TYPE_MC);
	FUNC0(priv->mdev, 0,
				      ea->allmulti_enabled,
				      ea->promisc_enabled);
}