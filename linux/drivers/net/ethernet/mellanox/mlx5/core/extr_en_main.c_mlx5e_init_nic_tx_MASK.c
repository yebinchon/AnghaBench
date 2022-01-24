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
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 

__attribute__((used)) static int FUNC3(struct mlx5e_priv *priv)
{
	int err;

	err = FUNC1(priv);
	if (err) {
		FUNC0(priv->mdev, "create tises failed, %d\n", err);
		return err;
	}

#ifdef CONFIG_MLX5_CORE_EN_DCB
	mlx5e_dcbnl_initialize(priv);
#endif
	return 0;
}