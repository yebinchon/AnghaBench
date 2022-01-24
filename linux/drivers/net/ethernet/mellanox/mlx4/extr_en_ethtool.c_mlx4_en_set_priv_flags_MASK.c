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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int pflags; int* tx_ring_num; int /*<<< orphan*/  port; TYPE_1__*** tx_ring; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int bf_alloced; int bf_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_EN_NUM_TX_TYPES ; 
 int MLX4_EN_PRIV_FLAGS_BLUEFLAME ; 
 int MLX4_EN_PRIV_FLAGS_PHV ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,char*) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, u32 flags)
{
	struct mlx4_en_priv *priv = FUNC2(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	bool bf_enabled_new = !!(flags & MLX4_EN_PRIV_FLAGS_BLUEFLAME);
	bool bf_enabled_old = !!(priv->pflags & MLX4_EN_PRIV_FLAGS_BLUEFLAME);
	bool phv_enabled_new = !!(flags & MLX4_EN_PRIV_FLAGS_PHV);
	bool phv_enabled_old = !!(priv->pflags & MLX4_EN_PRIV_FLAGS_PHV);
	int i;
	int ret = 0;

	if (bf_enabled_new != bf_enabled_old) {
		int t;

		if (bf_enabled_new) {
			bool bf_supported = true;

			for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++)
				for (i = 0; i < priv->tx_ring_num[t]; i++)
					bf_supported &=
						priv->tx_ring[t][i]->bf_alloced;

			if (!bf_supported) {
				FUNC0(priv, "BlueFlame is not supported\n");
				return -EINVAL;
			}

			priv->pflags |= MLX4_EN_PRIV_FLAGS_BLUEFLAME;
		} else {
			priv->pflags &= ~MLX4_EN_PRIV_FLAGS_BLUEFLAME;
		}

		for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++)
			for (i = 0; i < priv->tx_ring_num[t]; i++)
				priv->tx_ring[t][i]->bf_enabled =
					bf_enabled_new;

		FUNC1(priv, "BlueFlame %s\n",
			bf_enabled_new ?  "Enabled" : "Disabled");
	}

	if (phv_enabled_new != phv_enabled_old) {
		ret = FUNC3(mdev->dev, priv->port, (int)phv_enabled_new);
		if (ret)
			return ret;
		else if (phv_enabled_new)
			priv->pflags |= MLX4_EN_PRIV_FLAGS_PHV;
		else
			priv->pflags &= ~MLX4_EN_PRIV_FLAGS_PHV;
		FUNC1(priv, "PHV bit %s\n",
			phv_enabled_new ?  "Enabled" : "Disabled");
	}
	return 0;
}