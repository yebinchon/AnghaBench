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
struct mlx5e_priv {int /*<<< orphan*/  netdev; TYPE_2__* mdev; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_3__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  REP_ETH ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mlx5e_priv*,struct net_device*) ; 
 struct net_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct net_device* FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct mlx5e_priv *priv,
				  struct net_device *dev,
				  struct net_device **route_dev,
				  struct net_device **out_dev)
{
	struct net_device *uplink_dev, *uplink_upper, *real_dev;
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
	bool dst_is_lag_dev;

	real_dev = FUNC2(dev) ? FUNC14(dev) : dev;
	uplink_dev = FUNC3(esw, REP_ETH);

	FUNC12();
	uplink_upper = FUNC8(uplink_dev);
	/* mlx5_lag_is_sriov() is a blocking function which can't be called
	 * while holding rcu read lock. Take the net_device for correctness
	 * sake.
	 */
	if (uplink_upper)
		FUNC0(uplink_upper);
	FUNC13();

	dst_is_lag_dev = (uplink_upper &&
			  FUNC11(uplink_upper) &&
			  real_dev == uplink_upper &&
			  FUNC4(priv->mdev));
	if (uplink_upper)
		FUNC1(uplink_upper);

	/* if the egress device isn't on the same HW e-switch or
	 * it's a LAG device, use the uplink
	 */
	*route_dev = dev;
	if (!FUNC9(priv->netdev, real_dev) ||
	    dst_is_lag_dev || FUNC2(*route_dev))
		*out_dev = uplink_dev;
	else if (FUNC5(dev) &&
		 FUNC7(priv, dev))
		*out_dev = *route_dev;
	else
		return -EOPNOTSUPP;

	if (!(FUNC5(*out_dev) &&
	      FUNC6(FUNC10(*out_dev))))
		return -EOPNOTSUPP;

	return 0;
}