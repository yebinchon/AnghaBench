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
struct mlx5e_priv {int dummy; } ;
struct mlx5e_ethtool_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5e_ethtool_rule* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,struct mlx5e_ethtool_rule*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_ethtool_rule*) ; 
 struct mlx5e_ethtool_rule* FUNC3 (struct mlx5e_priv*,int) ; 
 struct mlx5e_ethtool_rule* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5e_ethtool_rule *FUNC5(struct mlx5e_priv *priv,
						   int location)
{
	struct mlx5e_ethtool_rule *eth_rule;

	eth_rule = FUNC3(priv, location);
	if (eth_rule)
		FUNC2(priv, eth_rule);

	eth_rule = FUNC4(sizeof(*eth_rule), GFP_KERNEL);
	if (!eth_rule)
		return FUNC0(-ENOMEM);

	FUNC1(priv, eth_rule);
	return eth_rule;
}