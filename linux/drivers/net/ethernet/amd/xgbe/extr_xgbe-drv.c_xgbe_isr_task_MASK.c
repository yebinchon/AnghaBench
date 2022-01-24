#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* i2c_isr ) (struct xgbe_prv_data*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* an_isr ) (struct xgbe_prv_data*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  rx_buffer_unavailable; } ;
struct xgbe_hw_if {int /*<<< orphan*/  (* get_tx_tstamp ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* rx_mmc_int ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* tx_mmc_int ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; scalar_t__ dev_irq; scalar_t__ an_irq; scalar_t__ ecc_irq; scalar_t__ i2c_irq; int /*<<< orphan*/  per_channel_irq; TYPE_4__* vdata; TYPE_3__ i2c_if; TYPE_2__ phy_if; int /*<<< orphan*/  mdio_complete; int /*<<< orphan*/  netdev; int /*<<< orphan*/  tx_tstamp_work; int /*<<< orphan*/  dev_workqueue; int /*<<< orphan*/  tx_tstamp; int /*<<< orphan*/  restart_work; TYPE_1__ ext_stats; int /*<<< orphan*/  napi; struct xgbe_channel** channel; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int dummy; } ;
struct TYPE_8__ {scalar_t__ irq_reissue_support; scalar_t__ i2c_support; scalar_t__ ecc_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_SR ; 
 int /*<<< orphan*/  DMA_ISR ; 
 int /*<<< orphan*/  FBE ; 
 int /*<<< orphan*/  MACIS ; 
 int /*<<< orphan*/  MAC_ISR ; 
 int /*<<< orphan*/  MAC_MDIOISR ; 
 int /*<<< orphan*/  MAC_TSSR ; 
 int /*<<< orphan*/  MMCRXIS ; 
 int /*<<< orphan*/  MMCTXIS ; 
 int /*<<< orphan*/  RBU ; 
 int /*<<< orphan*/  RI ; 
 int /*<<< orphan*/  SMI ; 
 int /*<<< orphan*/  SNGLCOMPINT ; 
 int /*<<< orphan*/  TI ; 
 int /*<<< orphan*/  TSIS ; 
 int /*<<< orphan*/  TXTSC ; 
 unsigned int FUNC0 (struct xgbe_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_channel*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XP_INT_REISSUE_EN ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long) ; 

__attribute__((used)) static void FUNC19(unsigned long data)
{
	struct xgbe_prv_data *pdata = (struct xgbe_prv_data *)data;
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_channel *channel;
	unsigned int dma_isr, dma_ch_isr;
	unsigned int mac_isr, mac_tssr, mac_mdioisr;
	unsigned int i;

	/* The DMA interrupt status register also reports MAC and MTL
	 * interrupts. So for polling mode, we just need to check for
	 * this register to be non-zero
	 */
	dma_isr = FUNC3(pdata, DMA_ISR);
	if (!dma_isr)
		goto isr_done;

	FUNC9(pdata, intr, pdata->netdev, "DMA_ISR=%#010x\n", dma_isr);

	for (i = 0; i < pdata->channel_count; i++) {
		if (!(dma_isr & (1 << i)))
			continue;

		channel = pdata->channel[i];

		dma_ch_isr = FUNC0(channel, DMA_CH_SR);
		FUNC9(pdata, intr, pdata->netdev, "DMA_CH%u_ISR=%#010x\n",
			  i, dma_ch_isr);

		/* The TI or RI interrupt bits may still be set even if using
		 * per channel DMA interrupts. Check to be sure those are not
		 * enabled before using the private data napi structure.
		 */
		if (!pdata->per_channel_irq &&
		    (FUNC2(dma_ch_isr, DMA_CH_SR, TI) ||
		     FUNC2(dma_ch_isr, DMA_CH_SR, RI))) {
			if (FUNC8(&pdata->napi)) {
				/* Disable Tx and Rx interrupts */
				FUNC17(pdata);

				/* Turn on polling */
				FUNC6(&pdata->napi);
			}
		} else {
			/* Don't clear Rx/Tx status if doing per channel DMA
			 * interrupts, these will be cleared by the ISR for
			 * per channel DMA interrupts.
			 */
			FUNC4(dma_ch_isr, DMA_CH_SR, TI, 0);
			FUNC4(dma_ch_isr, DMA_CH_SR, RI, 0);
		}

		if (FUNC2(dma_ch_isr, DMA_CH_SR, RBU))
			pdata->ext_stats.rx_buffer_unavailable++;

		/* Restart the device on a Fatal Bus Error */
		if (FUNC2(dma_ch_isr, DMA_CH_SR, FBE))
			FUNC11(&pdata->restart_work);

		/* Clear interrupt signals */
		FUNC1(channel, DMA_CH_SR, dma_ch_isr);
	}

	if (FUNC2(dma_isr, DMA_ISR, MACIS)) {
		mac_isr = FUNC3(pdata, MAC_ISR);

		FUNC9(pdata, intr, pdata->netdev, "MAC_ISR=%#010x\n",
			  mac_isr);

		if (FUNC2(mac_isr, MAC_ISR, MMCTXIS))
			hw_if->tx_mmc_int(pdata);

		if (FUNC2(mac_isr, MAC_ISR, MMCRXIS))
			hw_if->rx_mmc_int(pdata);

		if (FUNC2(mac_isr, MAC_ISR, TSIS)) {
			mac_tssr = FUNC3(pdata, MAC_TSSR);

			FUNC9(pdata, intr, pdata->netdev,
				  "MAC_TSSR=%#010x\n", mac_tssr);

			if (FUNC2(mac_tssr, MAC_TSSR, TXTSC)) {
				/* Read Tx Timestamp to clear interrupt */
				pdata->tx_tstamp =
					hw_if->get_tx_tstamp(pdata);
				FUNC10(pdata->dev_workqueue,
					   &pdata->tx_tstamp_work);
			}
		}

		if (FUNC2(mac_isr, MAC_ISR, SMI)) {
			mac_mdioisr = FUNC3(pdata, MAC_MDIOISR);

			FUNC9(pdata, intr, pdata->netdev,
				  "MAC_MDIOISR=%#010x\n", mac_mdioisr);

			if (FUNC2(mac_mdioisr, MAC_MDIOISR,
					   SNGLCOMPINT))
				FUNC7(&pdata->mdio_complete);
		}
	}

isr_done:
	/* If there is not a separate AN irq, handle it here */
	if (pdata->dev_irq == pdata->an_irq)
		pdata->phy_if.an_isr(pdata);

	/* If there is not a separate ECC irq, handle it here */
	if (pdata->vdata->ecc_support && (pdata->dev_irq == pdata->ecc_irq))
		FUNC18((unsigned long)pdata);

	/* If there is not a separate I2C irq, handle it here */
	if (pdata->vdata->i2c_support && (pdata->dev_irq == pdata->i2c_irq))
		pdata->i2c_if.i2c_isr(pdata);

	/* Reissue interrupt if status is not clear */
	if (pdata->vdata->irq_reissue_support) {
		unsigned int reissue_mask;

		reissue_mask = 1 << 0;
		if (!pdata->per_channel_irq)
			reissue_mask |= 0xffff << 4;

		FUNC5(pdata, XP_INT_REISSUE_EN, reissue_mask);
	}
}