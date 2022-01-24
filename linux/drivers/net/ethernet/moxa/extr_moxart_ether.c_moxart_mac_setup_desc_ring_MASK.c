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
struct net_device {int /*<<< orphan*/  dev; } ;
struct moxart_mac_priv_t {int tx_buf_size; int rx_buf_size; uintptr_t* rx_mapping; scalar_t__ base; int /*<<< orphan*/  rx_base; int /*<<< orphan*/  tx_base; scalar_t__ rx_head; scalar_t__* rx_buf; scalar_t__ rx_buf_base; void* rx_desc_base; scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ tx_buf_base; scalar_t__* tx_buf; void* tx_desc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ REG_RXR_BASE_ADDRESS ; 
 scalar_t__ REG_TXR_BASE_ADDRESS ; 
 uintptr_t RX_BUF_SIZE ; 
 uintptr_t RX_DESC0_DMA_OWN ; 
 uintptr_t RX_DESC1_BUF_SIZE_MASK ; 
 uintptr_t RX_DESC1_END ; 
 int RX_DESC2_ADDRESS_PHYS ; 
 int RX_DESC2_ADDRESS_VIRT ; 
 int RX_DESC_NUM ; 
 int RX_REG_DESC_SIZE ; 
 int RX_REG_OFFSET_DESC0 ; 
 int RX_REG_OFFSET_DESC1 ; 
 int RX_REG_OFFSET_DESC2 ; 
 uintptr_t TX_DESC1_END ; 
 int TX_DESC_NUM ; 
 int TX_REG_DESC_SIZE ; 
 int TX_REG_OFFSET_DESC1 ; 
 uintptr_t FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct moxart_mac_priv_t* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC5(ndev);
	void *desc;
	int i;

	for (i = 0; i < TX_DESC_NUM; i++) {
		desc = priv->tx_desc_base + i * TX_REG_DESC_SIZE;
		FUNC2(desc, 0, TX_REG_DESC_SIZE);

		priv->tx_buf[i] = priv->tx_buf_base + priv->tx_buf_size * i;
	}
	FUNC3(TX_DESC1_END, desc + TX_REG_OFFSET_DESC1);

	priv->tx_head = 0;
	priv->tx_tail = 0;

	for (i = 0; i < RX_DESC_NUM; i++) {
		desc = priv->rx_desc_base + i * RX_REG_DESC_SIZE;
		FUNC2(desc, 0, RX_REG_DESC_SIZE);
		FUNC3(RX_DESC0_DMA_OWN, desc + RX_REG_OFFSET_DESC0);
		FUNC3(RX_BUF_SIZE & RX_DESC1_BUF_SIZE_MASK,
		       desc + RX_REG_OFFSET_DESC1);

		priv->rx_buf[i] = priv->rx_buf_base + priv->rx_buf_size * i;
		priv->rx_mapping[i] = FUNC0(&ndev->dev,
						     priv->rx_buf[i],
						     priv->rx_buf_size,
						     DMA_FROM_DEVICE);
		if (FUNC1(&ndev->dev, priv->rx_mapping[i]))
			FUNC4(ndev, "DMA mapping error\n");

		FUNC3(priv->rx_mapping[i],
		       desc + RX_REG_OFFSET_DESC2 + RX_DESC2_ADDRESS_PHYS);
		FUNC3((uintptr_t)priv->rx_buf[i],
		       desc + RX_REG_OFFSET_DESC2 + RX_DESC2_ADDRESS_VIRT);
	}
	FUNC3(RX_DESC1_END, desc + RX_REG_OFFSET_DESC1);

	priv->rx_head = 0;

	/* reset the MAC controller TX/RX descriptor base address */
	FUNC6(priv->tx_base, priv->base + REG_TXR_BASE_ADDRESS);
	FUNC6(priv->rx_base, priv->base + REG_RXR_BASE_ADDRESS);
}