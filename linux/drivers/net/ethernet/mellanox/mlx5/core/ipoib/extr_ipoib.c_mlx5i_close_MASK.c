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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  channels; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct mlx5e_priv *epriv = FUNC4(netdev);
	struct mlx5i_priv *ipriv = epriv->ppriv;
	struct mlx5_core_dev *mdev = epriv->mdev;

	/* May already be CLOSED in case a previous configuration operation
	 * (e.g RX/TX queue size change) that involves close&open failed.
	 */
	FUNC6(&epriv->state_lock);

	if (!FUNC9(MLX5E_STATE_OPENED, &epriv->state))
		goto unlock;

	FUNC0(MLX5E_STATE_OPENED, &epriv->state);

	FUNC8(epriv->netdev);
	FUNC1(mdev, ipriv->qp.qpn);
	FUNC3(epriv);
	FUNC2(&epriv->channels);
	FUNC5(epriv);
unlock:
	FUNC7(&epriv->state_lock);
	return 0;
}