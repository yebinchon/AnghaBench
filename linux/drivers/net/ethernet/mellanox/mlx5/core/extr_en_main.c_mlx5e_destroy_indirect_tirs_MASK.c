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
struct mlx5e_priv {int /*<<< orphan*/ * inner_indir_tir; int /*<<< orphan*/  mdev; int /*<<< orphan*/ * indir_tir; } ;

/* Variables and functions */
 int MLX5E_NUM_INDIR_TIRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct mlx5e_priv *priv, bool inner_ttc)
{
	int i;

	for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++)
		FUNC0(priv->mdev, &priv->indir_tir[i]);

	if (!inner_ttc || !FUNC1(priv->mdev))
		return;

	for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++)
		FUNC0(priv->mdev, &priv->inner_indir_tir[i]);
}