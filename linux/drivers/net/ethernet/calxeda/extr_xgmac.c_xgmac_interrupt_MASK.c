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
typedef  int u32 ;
struct xgmac_extra_stats {int /*<<< orphan*/  fatal_bus_error; int /*<<< orphan*/  tx_process_stopped; int /*<<< orphan*/  tx_early; int /*<<< orphan*/  rx_process_stopped; int /*<<< orphan*/  rx_buf_unav; int /*<<< orphan*/  tx_jabber; } ;
struct xgmac_priv {int /*<<< orphan*/  napi; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_timeout_work; struct xgmac_extra_stats xstats; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DMA_INTR_ABNORMAL ; 
 int DMA_STATUS_AIS ; 
 int DMA_STATUS_ETI ; 
 int DMA_STATUS_FBI ; 
 int DMA_STATUS_RI ; 
 int DMA_STATUS_RPS ; 
 int DMA_STATUS_RU ; 
 int DMA_STATUS_TI ; 
 int DMA_STATUS_TJT ; 
 int DMA_STATUS_TPS ; 
 int DMA_STATUS_TU ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ XGMAC_DMA_INTR_ENA ; 
 scalar_t__ XGMAC_DMA_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct xgmac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	u32 intr_status;
	struct net_device *dev = (struct net_device *)dev_id;
	struct xgmac_priv *priv = FUNC4(dev);
	struct xgmac_extra_stats *x = &priv->xstats;

	/* read the status register (CSR5) */
	intr_status = FUNC0(priv->base + XGMAC_DMA_STATUS);
	intr_status &= FUNC0(priv->base + XGMAC_DMA_INTR_ENA);
	FUNC1(intr_status, priv->base + XGMAC_DMA_STATUS);

	/* It displays the DMA process states (CSR5 register) */
	/* ABNORMAL interrupts */
	if (FUNC6(intr_status & DMA_STATUS_AIS)) {
		if (intr_status & DMA_STATUS_TJT) {
			FUNC3(priv->dev, "transmit jabber\n");
			x->tx_jabber++;
		}
		if (intr_status & DMA_STATUS_RU)
			x->rx_buf_unav++;
		if (intr_status & DMA_STATUS_RPS) {
			FUNC3(priv->dev, "receive process stopped\n");
			x->rx_process_stopped++;
		}
		if (intr_status & DMA_STATUS_ETI) {
			FUNC3(priv->dev, "transmit early interrupt\n");
			x->tx_early++;
		}
		if (intr_status & DMA_STATUS_TPS) {
			FUNC3(priv->dev, "transmit process stopped\n");
			x->tx_process_stopped++;
			FUNC5(&priv->tx_timeout_work);
		}
		if (intr_status & DMA_STATUS_FBI) {
			FUNC3(priv->dev, "fatal bus error\n");
			x->fatal_bus_error++;
		}
	}

	/* TX/RX NORMAL interrupts */
	if (intr_status & (DMA_STATUS_RI | DMA_STATUS_TU | DMA_STATUS_TI)) {
		FUNC1(DMA_INTR_ABNORMAL, priv->base + XGMAC_DMA_INTR_ENA);
		FUNC2(&priv->napi);
	}

	return IRQ_HANDLED;
}