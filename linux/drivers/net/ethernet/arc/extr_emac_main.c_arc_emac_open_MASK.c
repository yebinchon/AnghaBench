#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int /*<<< orphan*/  supported; int /*<<< orphan*/  advertising; scalar_t__ duplex; scalar_t__ speed; int /*<<< orphan*/  autoneg; } ;
struct net_device {struct phy_device* phydev; int /*<<< orphan*/  dev; } ;
struct buffer_state {TYPE_1__* skb; } ;
struct arc_emac_priv {unsigned int last_rx_bd; int /*<<< orphan*/  napi; scalar_t__ txbd_dma; scalar_t__ rxbd_dma; int /*<<< orphan*/  txbd; scalar_t__ txbd_dirty; scalar_t__ txbd_curr; struct buffer_state* rx_buff; struct arc_emac_bd* rxbd; } ;
struct arc_emac_bd {void* info; void* data; } ;
typedef  int dma_addr_t ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EMAC_BUFFER_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EN_MASK ; 
 int ERR_MASK ; 
 int FOR_EMAC ; 
 int RXINT_MASK ; 
 int RXRN_MASK ; 
 int RX_BD_NUM ; 
 int /*<<< orphan*/  R_CTRL ; 
 int /*<<< orphan*/  R_ENABLE ; 
 int /*<<< orphan*/  R_LAFH ; 
 int /*<<< orphan*/  R_LAFL ; 
 int /*<<< orphan*/  R_RX_RING ; 
 int /*<<< orphan*/  R_TX_RING ; 
 int TXINT_MASK ; 
 int TXRN_MASK ; 
 int TX_BD_NUM ; 
 int /*<<< orphan*/  TX_RING_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct arc_emac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_state*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*) ; 
 struct arc_emac_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct phy_device*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC13(ndev);
	struct phy_device *phy_dev = ndev->phydev;
	int i;

	phy_dev->autoneg = AUTONEG_ENABLE;
	phy_dev->speed = 0;
	phy_dev->duplex = 0;
	FUNC8(phy_dev->advertising, phy_dev->advertising,
		     phy_dev->supported);

	priv->last_rx_bd = 0;

	/* Allocate and set buffers for Rx BD's */
	for (i = 0; i < RX_BD_NUM; i++) {
		dma_addr_t addr;
		unsigned int *last_rx_bd = &priv->last_rx_bd;
		struct arc_emac_bd *rxbd = &priv->rxbd[*last_rx_bd];
		struct buffer_state *rx_buff = &priv->rx_buff[*last_rx_bd];

		rx_buff->skb = FUNC11(ndev,
							 EMAC_BUFFER_SIZE);
		if (FUNC16(!rx_buff->skb))
			return -ENOMEM;

		addr = FUNC4(&ndev->dev, (void *)rx_buff->skb->data,
				      EMAC_BUFFER_SIZE, DMA_FROM_DEVICE);
		if (FUNC5(&ndev->dev, addr)) {
			FUNC12(ndev, "cannot dma map\n");
			FUNC3(rx_buff->skb);
			return -ENOMEM;
		}
		FUNC6(rx_buff, addr, addr);
		FUNC7(rx_buff, len, EMAC_BUFFER_SIZE);

		rxbd->data = FUNC2(addr);

		/* Make sure pointer to data buffer is set */
		FUNC17();

		/* Return ownership to EMAC */
		rxbd->info = FUNC2(FOR_EMAC | EMAC_BUFFER_SIZE);

		*last_rx_bd = (*last_rx_bd + 1) % RX_BD_NUM;
	}

	priv->txbd_curr = 0;
	priv->txbd_dirty = 0;

	/* Clean Tx BD's */
	FUNC9(priv->txbd, 0, TX_RING_SZ);

	/* Initialize logical address filter */
	FUNC1(priv, R_LAFL, 0);
	FUNC1(priv, R_LAFH, 0);

	/* Set BD ring pointers for device side */
	FUNC1(priv, R_RX_RING, (unsigned int)priv->rxbd_dma);
	FUNC1(priv, R_TX_RING, (unsigned int)priv->txbd_dma);

	/* Enable interrupts */
	FUNC1(priv, R_ENABLE, RXINT_MASK | TXINT_MASK | ERR_MASK);

	/* Set CONTROL */
	FUNC1(priv, R_CTRL,
		    (RX_BD_NUM << 24) |	/* RX BD table length */
		    (TX_BD_NUM << 16) |	/* TX BD table length */
		    TXRN_MASK | RXRN_MASK);

	FUNC10(&priv->napi);

	/* Enable EMAC */
	FUNC0(priv, R_CTRL, EN_MASK);

	FUNC15(ndev->phydev);

	FUNC14(ndev);

	return 0;
}