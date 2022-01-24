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
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct mlx5_rep_uplink_priv {int /*<<< orphan*/  tc_ht; TYPE_2__ netdevice_nb; int /*<<< orphan*/  tc_indr_block_priv_list; int /*<<< orphan*/  tun_entropy; int /*<<< orphan*/  unready_flows; int /*<<< orphan*/  unready_flows_lock; } ;
struct mlx5e_rep_priv {struct mlx5_rep_uplink_priv uplink_priv; TYPE_1__* rep; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5e_rep_priv* ppriv; } ;
struct TYPE_3__ {scalar_t__ vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5e_nic_rep_netdevice_event ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct mlx5e_priv *priv)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_rep_uplink_priv *uplink_priv;
	int err;

	err = FUNC4(priv);
	if (err) {
		FUNC2(priv->mdev, "create tises failed, %d\n", err);
		return err;
	}

	if (rpriv->rep->vport == MLX5_VPORT_UPLINK) {
		uplink_priv = &rpriv->uplink_priv;

		FUNC8(&uplink_priv->unready_flows_lock);
		FUNC0(&uplink_priv->unready_flows);

		/* init shared tc flow table */
		err = FUNC7(&uplink_priv->tc_ht);
		if (err)
			goto destroy_tises;

		FUNC3(&uplink_priv->tun_entropy, priv->mdev);

		/* init indirect block notifications */
		FUNC0(&uplink_priv->tc_indr_block_priv_list);
		uplink_priv->netdevice_nb.notifier_call = mlx5e_nic_rep_netdevice_event;
		err = FUNC9(&uplink_priv->netdevice_nb);
		if (err) {
			FUNC1(priv->mdev, "Failed to register netdev notifier\n");
			goto tc_esw_cleanup;
		}
	}

	return 0;

tc_esw_cleanup:
	FUNC6(&uplink_priv->tc_ht);
destroy_tises:
	FUNC5(priv);
	return err;
}