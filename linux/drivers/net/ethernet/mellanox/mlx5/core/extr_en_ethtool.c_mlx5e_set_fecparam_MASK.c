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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_fecparam {int fec; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*,int) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int* pplm_fec_2_ethtool ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			      struct ethtool_fecparam *fecparam)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	u8 fec_policy = 0;
	int mode;
	int err;

	for (mode = 0; mode < FUNC0(pplm_fec_2_ethtool); mode++) {
		if (!(pplm_fec_2_ethtool[mode] & fecparam->fec))
			continue;
		fec_policy |= (1 << mode);
		break;
	}

	err = FUNC2(mdev, fec_policy);

	if (err)
		return err;

	FUNC1(mdev);

	return 0;
}