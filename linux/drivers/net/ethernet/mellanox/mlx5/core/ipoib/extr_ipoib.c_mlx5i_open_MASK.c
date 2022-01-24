#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {TYPE_2__ qp; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; TYPE_1__* profile; int /*<<< orphan*/  channels; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_rx ) (struct mlx5e_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int FUNC5 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_priv*) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev)
{
	struct mlx5e_priv *epriv = FUNC6(netdev);
	struct mlx5i_priv *ipriv = epriv->ppriv;
	struct mlx5_core_dev *mdev = epriv->mdev;
	int err;

	FUNC9(&epriv->state_lock);

	FUNC11(MLX5E_STATE_OPENED, &epriv->state);

	err = FUNC7(epriv);
	if (err) {
		FUNC1(mdev, "prepare underlay qp state failed, %d\n", err);
		goto err_clear_state_opened_flag;
	}

	err = FUNC2(mdev, ipriv->qp.qpn);
	if (err) {
		FUNC1(mdev, "attach underlay qp to ft failed, %d\n", err);
		goto err_reset_qp;
	}

	err = FUNC5(epriv, &epriv->channels);
	if (err)
		goto err_remove_fs_underlay_qp;

	epriv->profile->update_rx(epriv);
	FUNC4(epriv);

	FUNC10(&epriv->state_lock);
	return 0;

err_remove_fs_underlay_qp:
	FUNC3(mdev, ipriv->qp.qpn);
err_reset_qp:
	FUNC8(epriv);
err_clear_state_opened_flag:
	FUNC0(MLX5E_STATE_OPENED, &epriv->state);
	FUNC10(&epriv->state_lock);
	return err;
}