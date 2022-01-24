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
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; int /*<<< orphan*/ ** tisn; TYPE_1__* profile; int /*<<< orphan*/  channels; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_rx ) (struct mlx5e_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5e_priv*) ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev)
{
	struct mlx5e_priv *epriv = FUNC8(netdev);
	struct mlx5i_priv *ipriv = epriv->ppriv;
	struct mlx5_core_dev *mdev = epriv->mdev;
	int err;

	FUNC11(&epriv->state_lock);

	FUNC13(MLX5E_STATE_OPENED, &epriv->state);

	err = FUNC9(epriv);
	if (err) {
		FUNC1(mdev, "prepare child underlay qp state failed, %d\n", err);
		goto err_release_lock;
	}

	err = FUNC2(mdev, ipriv->qp.qpn);
	if (err) {
		FUNC1(mdev, "attach child underlay qp to ft failed, %d\n", err);
		goto err_unint_underlay_qp;
	}

	err = FUNC7(mdev, ipriv->qp.qpn, &epriv->tisn[0][0]);
	if (err) {
		FUNC1(mdev, "create child tis failed, %d\n", err);
		goto err_remove_rx_uderlay_qp;
	}

	err = FUNC6(epriv, &epriv->channels);
	if (err) {
		FUNC1(mdev, "opening child channels failed, %d\n", err);
		goto err_clear_state_opened_flag;
	}
	epriv->profile->update_rx(epriv);
	FUNC4(epriv);
	FUNC12(&epriv->state_lock);

	return 0;

err_clear_state_opened_flag:
	FUNC5(mdev, epriv->tisn[0][0]);
err_remove_rx_uderlay_qp:
	FUNC3(mdev, ipriv->qp.qpn);
err_unint_underlay_qp:
	FUNC10(epriv);
err_release_lock:
	FUNC0(MLX5E_STATE_OPENED, &epriv->state);
	FUNC12(&epriv->state_lock);
	return err;
}