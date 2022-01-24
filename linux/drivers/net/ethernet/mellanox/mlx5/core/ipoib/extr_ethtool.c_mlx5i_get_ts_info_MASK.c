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
struct mlx5e_priv {int dummy; } ;
struct ethtool_ts_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_priv*,struct ethtool_ts_info*) ; 
 struct mlx5e_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
			     struct ethtool_ts_info *info)
{
	struct mlx5e_priv *priv = FUNC1(netdev);

	return FUNC0(priv, info);
}