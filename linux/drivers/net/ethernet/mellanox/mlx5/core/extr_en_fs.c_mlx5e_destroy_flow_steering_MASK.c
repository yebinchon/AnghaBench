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
struct TYPE_2__ {int /*<<< orphan*/  inner_ttc; int /*<<< orphan*/  ttc; } ;
struct mlx5e_priv {TYPE_1__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 

void FUNC6(struct mlx5e_priv *priv)
{
	FUNC4(priv);
	FUNC2(priv);
	FUNC3(priv, &priv->fs.ttc);
	FUNC1(priv, &priv->fs.inner_ttc);
	FUNC0(priv);
	FUNC5(priv);
}