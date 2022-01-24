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
typedef  void* u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  stats_bitmap; scalar_t__ rx_skb_size; int /*<<< orphan*/  port; struct mlx4_en_dev* mdev; struct mlx4_en_port_profile* prof; } ;
struct mlx4_en_port_profile {void* tx_pause; void* rx_pause; void* rx_ppp; void* tx_ppp; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct ieee_pfc {void* pfc_en; int /*<<< orphan*/  delay; int /*<<< orphan*/  mbc; int /*<<< orphan*/  pfc_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void*,void*,void*) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
		struct ieee_pfc *pfc)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	struct mlx4_en_port_profile *prof = priv->prof;
	struct mlx4_en_dev *mdev = priv->mdev;
	u32 tx_pause, tx_ppp, rx_pause, rx_ppp;
	int err;

	FUNC0(DRV, priv, "cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\n",
			pfc->pfc_cap,
			pfc->pfc_en,
			pfc->mbc,
			pfc->delay);

	rx_pause = prof->rx_pause && !pfc->pfc_en;
	tx_pause = prof->tx_pause && !pfc->pfc_en;
	rx_ppp = pfc->pfc_en;
	tx_ppp = pfc->pfc_en;

	err = FUNC2(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    tx_pause, tx_ppp, rx_pause, rx_ppp);
	if (err) {
		FUNC1(priv, "Failed setting pause params\n");
		return err;
	}

	FUNC3(mdev->dev, &priv->stats_bitmap,
					rx_ppp, rx_pause, tx_ppp, tx_pause);

	prof->tx_ppp = tx_ppp;
	prof->rx_ppp = rx_ppp;
	prof->rx_pause = rx_pause;
	prof->tx_pause = tx_pause;

	return err;
}