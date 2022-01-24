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
struct net_device {int /*<<< orphan*/  dev; } ;
struct moxart_mac_priv_t {int /*<<< orphan*/  rx_buf_base; int /*<<< orphan*/  tx_buf_base; int /*<<< orphan*/  rx_base; scalar_t__ rx_desc_base; TYPE_1__* pdev; int /*<<< orphan*/  tx_base; scalar_t__ tx_desc_base; int /*<<< orphan*/  rx_buf_size; int /*<<< orphan*/ * rx_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int RX_DESC_NUM ; 
 int RX_REG_DESC_SIZE ; 
 int TX_DESC_NUM ; 
 int TX_REG_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct moxart_mac_priv_t* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC3(ndev);
	int i;

	for (i = 0; i < RX_DESC_NUM; i++)
		FUNC1(&ndev->dev, priv->rx_mapping[i],
				 priv->rx_buf_size, DMA_FROM_DEVICE);

	if (priv->tx_desc_base)
		FUNC0(&priv->pdev->dev,
				  TX_REG_DESC_SIZE * TX_DESC_NUM,
				  priv->tx_desc_base, priv->tx_base);

	if (priv->rx_desc_base)
		FUNC0(&priv->pdev->dev,
				  RX_REG_DESC_SIZE * RX_DESC_NUM,
				  priv->rx_desc_base, priv->rx_base);

	FUNC2(priv->tx_buf_base);
	FUNC2(priv->rx_buf_base);
}