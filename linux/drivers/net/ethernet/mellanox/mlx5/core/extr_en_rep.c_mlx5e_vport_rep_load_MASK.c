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
struct mlx5e_rep_priv {int /*<<< orphan*/  dl_port; int /*<<< orphan*/  vport_sqs_list; struct net_device* netdev; struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_profile {int dummy; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; TYPE_1__* rep_data; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {struct mlx5e_rep_priv* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX5_VPORT_UPLINK ; 
 size_t REP_ETH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_rep_priv*) ; 
 struct mlx5e_rep_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 struct net_device* FUNC8 (struct mlx5_core_dev*,struct mlx5e_profile const*,int,struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5e_rep_priv*) ; 
 int FUNC14 (struct mlx5e_rep_priv*) ; 
 struct mlx5e_profile mlx5e_rep_profile ; 
 struct mlx5e_profile mlx5e_uplink_rep_profile ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__) ; 
 int FUNC17 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 
 int FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 

__attribute__((used)) static int
FUNC20(struct mlx5_core_dev *dev, struct mlx5_eswitch_rep *rep)
{
	const struct mlx5e_profile *profile;
	struct mlx5e_rep_priv *rpriv;
	struct net_device *netdev;
	int nch, err;

	rpriv = FUNC5(sizeof(*rpriv), GFP_KERNEL);
	if (!rpriv)
		return -ENOMEM;

	/* rpriv->rep to be looked up when profile->init() is called */
	rpriv->rep = rep;

	nch = FUNC12(dev);
	profile = (rep->vport == MLX5_VPORT_UPLINK) ?
		  &mlx5e_uplink_rep_profile : &mlx5e_rep_profile;
	netdev = FUNC8(dev, profile, nch, rpriv);
	if (!netdev) {
		FUNC16("Failed to create representor netdev for vport %d\n",
			rep->vport);
		FUNC4(rpriv);
		return -EINVAL;
	}

	rpriv->netdev = netdev;
	rep->rep_data[REP_ETH].priv = rpriv;
	FUNC0(&rpriv->vport_sqs_list);

	if (rep->vport == MLX5_VPORT_UPLINK) {
		err = FUNC7(dev);
		if (err)
			goto err_destroy_netdev;
	}

	err = FUNC6(FUNC15(netdev));
	if (err) {
		FUNC16("Failed to attach representor netdev for vport %d\n",
			rep->vport);
		goto err_destroy_mdev_resources;
	}

	err = FUNC14(rpriv);
	if (err) {
		FUNC16("Failed to initialized neighbours handling for vport %d\n",
			rep->vport);
		goto err_detach_netdev;
	}

	err = FUNC17(dev, rpriv);
	if (err) {
		FUNC2(dev, "Failed to register devlink port %d\n",
			 rep->vport);
		goto err_neigh_cleanup;
	}

	err = FUNC18(netdev);
	if (err) {
		FUNC16("Failed to register representor netdev for vport %d\n",
			rep->vport);
		goto err_devlink_cleanup;
	}

	if (FUNC3(dev, rpriv))
		FUNC1(&rpriv->dl_port, netdev);
	return 0;

err_devlink_cleanup:
	FUNC19(dev, rpriv);

err_neigh_cleanup:
	FUNC13(rpriv);

err_detach_netdev:
	FUNC11(FUNC15(netdev));

err_destroy_mdev_resources:
	if (rep->vport == MLX5_VPORT_UPLINK)
		FUNC9(dev);

err_destroy_netdev:
	FUNC10(FUNC15(netdev));
	FUNC4(rpriv);
	return err;
}