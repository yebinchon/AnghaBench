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
struct mlx5i_priv {int /*<<< orphan*/  qp; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/ ** tisn; struct mlx5i_priv* ppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5i_priv *ipriv = priv->ppriv;

	FUNC0(priv->mdev, priv->tisn[0][0]);
	FUNC1(priv->mdev, &ipriv->qp);
}