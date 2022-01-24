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
struct TYPE_3__ {int vlan_strip_disable; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_2__ channels; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, bool enable)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	int err = 0;

	FUNC1(&priv->state_lock);

	priv->channels.params.vlan_strip_disable = !enable;
	if (!FUNC4(MLX5E_STATE_OPENED, &priv->state))
		goto unlock;

	err = FUNC0(&priv->channels, !enable);
	if (err)
		priv->channels.params.vlan_strip_disable = enable;

unlock:
	FUNC2(&priv->state_lock);

	return err;
}