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
struct stm32_fmc2_nfc {size_t cs_sel; int /*<<< orphan*/  dma_ecc_len; int /*<<< orphan*/  dev; scalar_t__ dma_ecc_ch; int /*<<< orphan*/  io_phys_addr; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; int /*<<< orphan*/ * data_phys_addr; } ;
struct stm32_fmc2_nand {size_t* cs_used; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; void* src_addr_width; int /*<<< orphan*/  src_addr; void* dst_addr_width; int /*<<< orphan*/  dst_addr; } ;
typedef  int /*<<< orphan*/  dma_cfg ;

/* Variables and functions */
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 scalar_t__ FMC2_BCHDSR0 ; 
 int /*<<< orphan*/  FMC2_BCHDSRS_LEN ; 
 scalar_t__ FMC2_ECC_HAM ; 
 scalar_t__ FMC2_HECCR ; 
 int /*<<< orphan*/  FMC2_HECCR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 struct stm32_fmc2_nand* FUNC5 (struct nand_chip*) ; 
 struct stm32_fmc2_nfc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, int chipnr)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC6(chip->controller);
	struct stm32_fmc2_nand *nand = FUNC5(chip);
	struct dma_slave_config dma_cfg;
	int ret;

	if (nand->cs_used[chipnr] == fmc2->cs_sel)
		return 0;

	fmc2->cs_sel = nand->cs_used[chipnr];

	/* FMC2 setup routine */
	FUNC3(chip);

	/* Apply timings */
	FUNC4(chip);

	if (fmc2->dma_tx_ch && fmc2->dma_rx_ch) {
		FUNC2(&dma_cfg, 0, sizeof(dma_cfg));
		dma_cfg.src_addr = fmc2->data_phys_addr[fmc2->cs_sel];
		dma_cfg.dst_addr = fmc2->data_phys_addr[fmc2->cs_sel];
		dma_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
		dma_cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
		dma_cfg.src_maxburst = 32;
		dma_cfg.dst_maxburst = 32;

		ret = FUNC1(fmc2->dma_tx_ch, &dma_cfg);
		if (ret) {
			FUNC0(fmc2->dev, "tx DMA engine slave config failed\n");
			return ret;
		}

		ret = FUNC1(fmc2->dma_rx_ch, &dma_cfg);
		if (ret) {
			FUNC0(fmc2->dev, "rx DMA engine slave config failed\n");
			return ret;
		}
	}

	if (fmc2->dma_ecc_ch) {
		/*
		 * Hamming: we read HECCR register
		 * BCH4/BCH8: we read BCHDSRSx registers
		 */
		FUNC2(&dma_cfg, 0, sizeof(dma_cfg));
		dma_cfg.src_addr = fmc2->io_phys_addr;
		dma_cfg.src_addr += chip->ecc.strength == FMC2_ECC_HAM ?
				    FMC2_HECCR : FMC2_BCHDSR0;
		dma_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

		ret = FUNC1(fmc2->dma_ecc_ch, &dma_cfg);
		if (ret) {
			FUNC0(fmc2->dev, "ECC DMA engine slave config failed\n");
			return ret;
		}

		/* Calculate ECC length needed for one sector */
		fmc2->dma_ecc_len = chip->ecc.strength == FMC2_ECC_HAM ?
				    FMC2_HECCR_LEN : FMC2_BCHDSRS_LEN;
	}

	return 0;
}