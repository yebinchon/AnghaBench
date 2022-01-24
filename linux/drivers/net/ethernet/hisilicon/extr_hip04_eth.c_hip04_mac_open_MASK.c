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
struct hip04_priv {int /*<<< orphan*/  napi; scalar_t__ phy; int /*<<< orphan*/ * rx_phys; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rx_buf; scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_cnt_remaining; scalar_t__ rx_head; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int RX_DESC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hip04_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hip04_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct hip04_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct hip04_priv *priv = FUNC6(ndev);
	int i;

	priv->rx_head = 0;
	priv->rx_cnt_remaining = 0;
	priv->tx_head = 0;
	priv->tx_tail = 0;
	FUNC3(priv);

	for (i = 0; i < RX_DESC_NUM; i++) {
		dma_addr_t phys;

		phys = FUNC0(priv->dev, priv->rx_buf[i],
				      RX_BUF_SIZE, DMA_FROM_DEVICE);
		if (FUNC1(priv->dev, phys))
			return -EIO;

		priv->rx_phys[i] = phys;
		FUNC4(priv, phys);
	}

	if (priv->phy)
		FUNC9(priv->phy);

	FUNC7(ndev);
	FUNC8(ndev);
	FUNC2(ndev);
	FUNC5(&priv->napi);

	return 0;
}