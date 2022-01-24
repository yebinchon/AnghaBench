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
struct TYPE_4__ {int /*<<< orphan*/  dscp_app_cnt; } ;
struct TYPE_3__ {scalar_t__* dscp2prio; } ;
struct mlx5e_priv {TYPE_2__ dcbx; TYPE_1__ dcbx_dp; int /*<<< orphan*/  mdev; } ;
struct dcb_app {scalar_t__ selector; size_t protocol; scalar_t__ priority; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ IEEE_8021QAZ_APP_SEL_DSCP ; 
 size_t MLX5E_MAX_DSCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_QPTS_TRUST_DSCP ; 
 int /*<<< orphan*/  MLX5_QPTS_TRUST_PCP ; 
 int FUNC2 (struct net_device*,struct dcb_app*) ; 
 int FUNC3 (struct net_device*,struct dcb_app*) ; 
 int FUNC4 (struct mlx5e_priv*,size_t,scalar_t__) ; 
 int FUNC5 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  vport_group_manager ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct dcb_app *app)
{
	struct mlx5e_priv *priv = FUNC6(dev);
	struct dcb_app temp;
	bool is_new;
	int err;

	if (!FUNC0(priv->mdev, vport_group_manager) ||
	    !FUNC1(priv->mdev))
		return -EOPNOTSUPP;

	if ((app->selector != IEEE_8021QAZ_APP_SEL_DSCP) ||
	    (app->protocol >= MLX5E_MAX_DSCP))
		return -EINVAL;

	/* Save the old entry info */
	temp.selector = IEEE_8021QAZ_APP_SEL_DSCP;
	temp.protocol = app->protocol;
	temp.priority = priv->dcbx_dp.dscp2prio[app->protocol];

	/* Check if need to switch to dscp trust state */
	if (!priv->dcbx.dscp_app_cnt) {
		err =  FUNC5(priv, MLX5_QPTS_TRUST_DSCP);
		if (err)
			return err;
	}

	/* Skip the fw command if new and old mapping are the same */
	if (app->priority != priv->dcbx_dp.dscp2prio[app->protocol]) {
		err = FUNC4(priv, app->protocol, app->priority);
		if (err)
			goto fw_err;
	}

	/* Delete the old entry if exists */
	is_new = false;
	err = FUNC2(dev, &temp);
	if (err)
		is_new = true;

	/* Add new entry and update counter */
	err = FUNC3(dev, app);
	if (err)
		return err;

	if (is_new)
		priv->dcbx.dscp_app_cnt++;

	return err;

fw_err:
	FUNC5(priv, MLX5_QPTS_TRUST_PCP);
	return err;
}