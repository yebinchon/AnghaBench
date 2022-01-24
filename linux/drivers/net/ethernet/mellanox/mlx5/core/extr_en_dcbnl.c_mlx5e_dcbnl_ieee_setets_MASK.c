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
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct ieee_ets {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee_ets*) ; 
 int FUNC1 (struct net_device*,struct ieee_ets*,int) ; 
 int FUNC2 (struct mlx5e_priv*,struct ieee_ets*) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				   struct ieee_ets *ets)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	int err;

	if (!FUNC0(priv->mdev, ets))
		return -EOPNOTSUPP;

	err = FUNC1(netdev, ets, false);
	if (err)
		return err;

	err = FUNC2(priv, ets);
	if (err)
		return err;

	return 0;
}