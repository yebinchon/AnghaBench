#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sxgbe_priv_data {int /*<<< orphan*/  sxgbe_clk; int /*<<< orphan*/  ioaddr; TYPE_3__* hw; int /*<<< orphan*/  napi; int /*<<< orphan*/  eee_ctrl_timer; scalar_t__ eee_enabled; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_6__ {TYPE_2__* mac; TYPE_1__* dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable_rx ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* enable_tx ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop_rx ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop_tx ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SXGBE_RX_QUEUES ; 
 int /*<<< orphan*/  SXGBE_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sxgbe_priv_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sxgbe_priv_data* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sxgbe_priv_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct sxgbe_priv_data*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct sxgbe_priv_data *priv = FUNC4(dev);

	if (priv->eee_enabled)
		FUNC1(&priv->eee_ctrl_timer);

	/* Stop and disconnect the PHY */
	if (dev->phydev) {
		FUNC7(dev->phydev);
		FUNC6(dev->phydev);
	}

	FUNC5(dev);

	FUNC3(&priv->napi);

	/* delete TX timers */
	FUNC13(priv);

	/* Stop TX/RX DMA and clear the descriptors */
	priv->hw->dma->stop_tx(priv->ioaddr, SXGBE_TX_QUEUES);
	priv->hw->dma->stop_rx(priv->ioaddr, SXGBE_RX_QUEUES);

	/* disable MTL queue */
	FUNC12(priv);

	/* Release and free the Rx/Tx resources */
	FUNC2(priv);

	/* Disable the MAC Rx/Tx */
	priv->hw->mac->enable_tx(priv->ioaddr, false);
	priv->hw->mac->enable_rx(priv->ioaddr, false);

	FUNC0(priv->sxgbe_clk);

	return 0;
}