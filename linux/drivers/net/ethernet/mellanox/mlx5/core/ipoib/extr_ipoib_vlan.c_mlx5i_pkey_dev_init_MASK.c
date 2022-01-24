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
struct net_device {TYPE_1__* netdev_ops; } ;
struct mlx5i_priv {int /*<<< orphan*/  qpn_htbl; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5i_priv* ppriv; } ;
struct TYPE_2__ {int (* ndo_get_iflink ) (struct net_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct net_device*) ; 
 struct mlx5e_priv* FUNC5 (struct net_device*) ; 
 struct mlx5i_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct mlx5e_priv *priv = FUNC5(dev);
	struct mlx5i_priv *ipriv, *parent_ipriv;
	struct net_device *parent_dev;
	int parent_ifindex;

	ipriv = priv->ppriv;

	/* Get QPN to netdevice hash table from parent */
	parent_ifindex = dev->netdev_ops->ndo_get_iflink(dev);
	parent_dev = FUNC0(FUNC1(dev), parent_ifindex);
	if (!parent_dev) {
		FUNC3(priv->mdev, "failed to get parent device\n");
		return -EINVAL;
	}

	parent_ipriv = FUNC6(parent_dev);
	ipriv->qpn_htbl = parent_ipriv->qpn_htbl;
	FUNC2(parent_dev);

	return FUNC4(dev);
}