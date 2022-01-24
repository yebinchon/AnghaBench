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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_svlans; int /*<<< orphan*/  active_cvlans; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ ETH_P_8021AD ; 
 scalar_t__ ETH_P_8021Q ; 
 int /*<<< orphan*/  MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID ; 
 int /*<<< orphan*/  MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *dev, __be16 proto, u16 vid)
{
	struct mlx5e_priv *priv = FUNC3(dev);

	if (FUNC0(proto) == ETH_P_8021Q) {
		FUNC1(vid, priv->fs.vlan.active_cvlans);
		FUNC2(priv, MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID, vid);
	} else if (FUNC0(proto) == ETH_P_8021AD) {
		FUNC1(vid, priv->fs.vlan.active_svlans);
		FUNC2(priv, MLX5E_VLAN_RULE_TYPE_MATCH_STAG_VID, vid);
		FUNC4(dev);
	}

	return 0;
}