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
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5i_priv* ppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5i_priv *ipriv = priv->ppriv;
	int err;

	err = FUNC1(priv->mdev, &ipriv->qp);
	if (err) {
		FUNC0(priv->mdev, "create child underlay QP failed, %d\n", err);
		return err;
	}

	return 0;
}