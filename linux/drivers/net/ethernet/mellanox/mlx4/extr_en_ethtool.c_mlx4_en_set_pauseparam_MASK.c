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
typedef  void* u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; int /*<<< orphan*/  stats_bitmap; scalar_t__ rx_skb_size; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; scalar_t__ autoneg; } ;
struct TYPE_2__ {void* rx_ppp; void* tx_ppp; void* rx_pause; void* tx_pause; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void*,void*,void*) ; 
 struct mlx4_en_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				struct ethtool_pauseparam *pause)
{
	struct mlx4_en_priv *priv = FUNC3(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	u8 tx_pause, tx_ppp, rx_pause, rx_ppp;
	int err;

	if (pause->autoneg)
		return -EINVAL;

	tx_pause = !!(pause->tx_pause);
	rx_pause = !!(pause->rx_pause);
	rx_ppp = (tx_pause || rx_pause) ? 0 : priv->prof->rx_ppp;
	tx_ppp = (tx_pause || rx_pause) ? 0 : priv->prof->tx_ppp;

	err = FUNC1(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    tx_pause, tx_ppp, rx_pause, rx_ppp);
	if (err) {
		FUNC0(priv, "Failed setting pause params, err = %d\n", err);
		return err;
	}

	FUNC2(mdev->dev, &priv->stats_bitmap,
					rx_ppp, rx_pause, tx_ppp, tx_pause);

	priv->prof->tx_pause = tx_pause;
	priv->prof->rx_pause = rx_pause;
	priv->prof->tx_ppp = tx_ppp;
	priv->prof->rx_ppp = rx_ppp;

	return err;
}