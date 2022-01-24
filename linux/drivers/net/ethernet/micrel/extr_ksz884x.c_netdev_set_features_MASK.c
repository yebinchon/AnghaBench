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
struct ksz_hw {int rx_cfg; scalar_t__ io; scalar_t__ enabled; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; struct ksz_hw hw; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int DMA_RX_CSUM_IP ; 
 int DMA_RX_CSUM_TCP ; 
 scalar_t__ KS_DMA_RX_CTRL ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
	netdev_features_t features)
{
	struct dev_priv *priv = FUNC2(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;

	FUNC0(&hw_priv->lock);

	/* see note in hw_setup() */
	if (features & NETIF_F_RXCSUM)
		hw->rx_cfg |= DMA_RX_CSUM_TCP | DMA_RX_CSUM_IP;
	else
		hw->rx_cfg &= ~(DMA_RX_CSUM_TCP | DMA_RX_CSUM_IP);

	if (hw->enabled)
		FUNC3(hw->rx_cfg, hw->io + KS_DMA_RX_CTRL);

	FUNC1(&hw_priv->lock);

	return 0;
}