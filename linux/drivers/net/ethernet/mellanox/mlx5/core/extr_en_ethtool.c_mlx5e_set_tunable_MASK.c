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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; } ;
struct ethtool_tunable {int id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_PFC_PREVENTION_TOUT 128 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			     const struct ethtool_tunable *tuna,
			     const void *data)
{
	struct mlx5e_priv *priv = FUNC3(dev);
	int err;

	FUNC1(&priv->state_lock);

	switch (tuna->id) {
	case ETHTOOL_PFC_PREVENTION_TOUT:
		err = FUNC0(dev, *(u16 *)data);
		break;
	default:
		err = -EINVAL;
		break;
	}

	FUNC2(&priv->state_lock);
	return err;
}