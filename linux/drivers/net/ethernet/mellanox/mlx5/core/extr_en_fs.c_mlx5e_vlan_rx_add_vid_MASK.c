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
struct mlx5e_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ ETH_P_8021AD ; 
 scalar_t__ ETH_P_8021Q ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *dev, __be16 proto, u16 vid)
{
	struct mlx5e_priv *priv = FUNC3(dev);

	if (FUNC0(proto) == ETH_P_8021Q)
		return FUNC1(priv, vid);
	else if (FUNC0(proto) == ETH_P_8021AD)
		return FUNC2(priv, vid);

	return -EOPNOTSUPP;
}