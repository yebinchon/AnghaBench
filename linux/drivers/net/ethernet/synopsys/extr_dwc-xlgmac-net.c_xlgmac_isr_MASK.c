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
struct TYPE_2__ {int /*<<< orphan*/  fatal_bus_error; int /*<<< orphan*/  rx_buffer_unavailable; int /*<<< orphan*/  tx_buffer_unavailable; int /*<<< orphan*/  rx_process_stopped; int /*<<< orphan*/  tx_process_stopped; int /*<<< orphan*/  napi_poll_isr; } ;
struct xlgmac_hw_ops {int /*<<< orphan*/  (* rx_mmc_int ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* tx_mmc_int ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {unsigned int channel_count; scalar_t__ mac_regs; int /*<<< orphan*/  restart_work; TYPE_1__ stats; int /*<<< orphan*/  napi; int /*<<< orphan*/  per_channel_irq; int /*<<< orphan*/  netdev; struct xlgmac_channel* channel_head; struct xlgmac_hw_ops hw_ops; } ;
struct xlgmac_channel {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_SR ; 
 int /*<<< orphan*/  DMA_CH_SR_FBE_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_FBE_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_RBU_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_RBU_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_RI_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_RI_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_RPS_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_RPS_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_TBU_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_TBU_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_TI_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_TI_POS ; 
 int /*<<< orphan*/  DMA_CH_SR_TPS_LEN ; 
 int /*<<< orphan*/  DMA_CH_SR_TPS_POS ; 
 scalar_t__ DMA_ISR ; 
 int /*<<< orphan*/  DMA_ISR_MACIS_LEN ; 
 int /*<<< orphan*/  DMA_ISR_MACIS_POS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MAC_ISR ; 
 int /*<<< orphan*/  MAC_ISR_MMCRXIS_LEN ; 
 int /*<<< orphan*/  MAC_ISR_MMCRXIS_POS ; 
 int /*<<< orphan*/  MAC_ISR_MMCTXIS_LEN ; 
 int /*<<< orphan*/  MAC_ISR_MMCTXIS_POS ; 
 scalar_t__ FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct xlgmac_pdata*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	unsigned int dma_isr, dma_ch_isr, mac_isr;
	struct xlgmac_pdata *pdata = data;
	struct xlgmac_channel *channel;
	struct xlgmac_hw_ops *hw_ops;
	unsigned int i, ti, ri;

	hw_ops = &pdata->hw_ops;

	/* The DMA interrupt status register also reports MAC and MTL
	 * interrupts. So for polling mode, we just need to check for
	 * this register to be non-zero
	 */
	dma_isr = FUNC5(pdata->mac_regs + DMA_ISR);
	if (!dma_isr)
		return IRQ_HANDLED;

	FUNC4(pdata, intr, pdata->netdev, "DMA_ISR=%#010x\n", dma_isr);

	for (i = 0; i < pdata->channel_count; i++) {
		if (!(dma_isr & (1 << i)))
			continue;

		channel = pdata->channel_head + i;

		dma_ch_isr = FUNC5(FUNC0(channel, DMA_CH_SR));
		FUNC4(pdata, intr, pdata->netdev, "DMA_CH%u_ISR=%#010x\n",
			  i, dma_ch_isr);

		/* The TI or RI interrupt bits may still be set even if using
		 * per channel DMA interrupts. Check to be sure those are not
		 * enabled before using the private data napi structure.
		 */
		ti = FUNC1(dma_ch_isr, DMA_CH_SR_TI_POS,
					 DMA_CH_SR_TI_LEN);
		ri = FUNC1(dma_ch_isr, DMA_CH_SR_RI_POS,
					 DMA_CH_SR_RI_LEN);
		if (!pdata->per_channel_irq && (ti || ri)) {
			if (FUNC3(&pdata->napi)) {
				/* Disable Tx and Rx interrupts */
				FUNC10(pdata);

				pdata->stats.napi_poll_isr++;
				/* Turn on polling */
				FUNC2(&pdata->napi);
			}
		}

		if (FUNC1(dma_ch_isr, DMA_CH_SR_TPS_POS,
					DMA_CH_SR_TPS_LEN))
			pdata->stats.tx_process_stopped++;

		if (FUNC1(dma_ch_isr, DMA_CH_SR_RPS_POS,
					DMA_CH_SR_RPS_LEN))
			pdata->stats.rx_process_stopped++;

		if (FUNC1(dma_ch_isr, DMA_CH_SR_TBU_POS,
					DMA_CH_SR_TBU_LEN))
			pdata->stats.tx_buffer_unavailable++;

		if (FUNC1(dma_ch_isr, DMA_CH_SR_RBU_POS,
					DMA_CH_SR_RBU_LEN))
			pdata->stats.rx_buffer_unavailable++;

		/* Restart the device on a Fatal Bus Error */
		if (FUNC1(dma_ch_isr, DMA_CH_SR_FBE_POS,
					DMA_CH_SR_FBE_LEN)) {
			pdata->stats.fatal_bus_error++;
			FUNC6(&pdata->restart_work);
		}

		/* Clear all interrupt signals */
		FUNC9(dma_ch_isr, FUNC0(channel, DMA_CH_SR));
	}

	if (FUNC1(dma_isr, DMA_ISR_MACIS_POS,
				DMA_ISR_MACIS_LEN)) {
		mac_isr = FUNC5(pdata->mac_regs + MAC_ISR);

		if (FUNC1(mac_isr, MAC_ISR_MMCTXIS_POS,
					MAC_ISR_MMCTXIS_LEN))
			hw_ops->tx_mmc_int(pdata);

		if (FUNC1(mac_isr, MAC_ISR_MMCRXIS_POS,
					MAC_ISR_MMCRXIS_LEN))
			hw_ops->rx_mmc_int(pdata);
	}

	return IRQ_HANDLED;
}