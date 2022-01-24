#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/ ** tisn; struct mlx5i_priv* ppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5i_priv *ipriv = priv->ppriv;
	int err;

	err = FUNC2(priv->mdev, &ipriv->qp);
	if (err) {
		FUNC0(priv->mdev, "create underlay QP failed, %d\n", err);
		return err;
	}

	err = FUNC1(priv->mdev, ipriv->qp.qpn, &priv->tisn[0][0]);
	if (err) {
		FUNC0(priv->mdev, "create tis failed, %d\n", err);
		goto err_destroy_underlay_qp;
	}

	return 0;

err_destroy_underlay_qp:
	FUNC3(priv->mdev, &ipriv->qp);
	return err;
}