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
struct mlx5e_tir {int /*<<< orphan*/  rqt; } ;
struct mlx5e_priv {int max_nch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 

void FUNC1(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
	int i;

	for (i = 0; i < priv->max_nch; i++)
		FUNC0(priv, &tirs[i].rqt);
}