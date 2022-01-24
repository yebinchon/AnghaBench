#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int steps; int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct mtd_info {int writesize; TYPE_2__ dev; } ;
struct lpc32xx_nand_host {int* data_buf; int* ecc_buf; int /*<<< orphan*/  io_base; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  io_base_dma; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int DMA_DEV_TO_MEM ; 
 int DMA_MEM_TO_DEV ; 
 int EIO ; 
 int /*<<< orphan*/  LPC32XX_DMA_TIMEOUT ; 
 int SLCCFG_DMA_BURST ; 
 int SLCCFG_DMA_DIR ; 
 int SLCCFG_DMA_ECC ; 
 int SLCCFG_ECC_EN ; 
 int SLCCTRL_DMA_START ; 
 int SLCCTRL_ECC_CLEAR ; 
 int SLCSTAT_DMA_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* high_memory ; 
 unsigned long jiffies ; 
 int FUNC10 (struct mtd_info*,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ ) ; 
 struct nand_chip* FUNC13 (struct mtd_info*) ; 
 struct lpc32xx_nand_host* FUNC14 (struct nand_chip*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct mtd_info *mtd, uint8_t *buf, int eccsubpages,
			int read)
{
	struct nand_chip *chip = FUNC13(mtd);
	struct lpc32xx_nand_host *host = FUNC14(chip);
	int i, status = 0;
	unsigned long timeout;
	int res;
	enum dma_transfer_direction dir =
		read ? DMA_DEV_TO_MEM : DMA_MEM_TO_DEV;
	uint8_t *dma_buf;
	bool dma_mapped;

	if ((void *)buf <= high_memory) {
		dma_buf = buf;
		dma_mapped = true;
	} else {
		dma_buf = host->data_buf;
		dma_mapped = false;
		if (!read)
			FUNC11(host->data_buf, buf, mtd->writesize);
	}

	if (read) {
		FUNC18(FUNC15(FUNC0(host->io_base)) |
		       SLCCFG_DMA_DIR | SLCCFG_ECC_EN | SLCCFG_DMA_ECC |
		       SLCCFG_DMA_BURST, FUNC0(host->io_base));
	} else {
		FUNC18((FUNC15(FUNC0(host->io_base)) |
			SLCCFG_ECC_EN | SLCCFG_DMA_ECC | SLCCFG_DMA_BURST) &
		       ~SLCCFG_DMA_DIR,
			FUNC0(host->io_base));
	}

	/* Clear initial ECC */
	FUNC18(SLCCTRL_ECC_CLEAR, FUNC1(host->io_base));

	/* Transfer size is data area only */
	FUNC18(mtd->writesize, FUNC5(host->io_base));

	/* Start transfer in the NAND controller */
	FUNC18(FUNC15(FUNC1(host->io_base)) | SLCCTRL_DMA_START,
	       FUNC1(host->io_base));

	for (i = 0; i < chip->ecc.steps; i++) {
		/* Data */
		res = FUNC10(mtd, FUNC2(host->io_base_dma),
				       dma_buf + i * chip->ecc.size,
				       mtd->writesize / chip->ecc.steps, dir);
		if (res)
			return res;

		/* Always _read_ ECC */
		if (i == chip->ecc.steps - 1)
			break;
		if (!read) /* ECC availability delayed on write */
			FUNC17(10);
		res = FUNC10(mtd, FUNC3(host->io_base_dma),
				       &host->ecc_buf[i], 4, DMA_DEV_TO_MEM);
		if (res)
			return res;
	}

	/*
	 * According to NXP, the DMA can be finished here, but the NAND
	 * controller may still have buffered data. After porting to using the
	 * dmaengine DMA driver (amba-pl080), the condition (DMA_FIFO empty)
	 * appears to be always true, according to tests. Keeping the check for
	 * safety reasons for now.
	 */
	if (FUNC15(FUNC4(host->io_base)) & SLCSTAT_DMA_FIFO) {
		FUNC8(mtd->dev.parent, "FIFO not empty!\n");
		timeout = jiffies + FUNC12(LPC32XX_DMA_TIMEOUT);
		while ((FUNC15(FUNC4(host->io_base)) & SLCSTAT_DMA_FIFO) &&
		       FUNC16(jiffies, timeout))
			FUNC6();
		if (!FUNC16(jiffies, timeout)) {
			FUNC7(mtd->dev.parent, "FIFO held data too long\n");
			status = -EIO;
		}
	}

	/* Read last calculated ECC value */
	if (!read)
		FUNC17(10);
	host->ecc_buf[chip->ecc.steps - 1] =
		FUNC15(FUNC3(host->io_base));

	/* Flush DMA */
	FUNC9(host->dma_chan);

	if (FUNC15(FUNC4(host->io_base)) & SLCSTAT_DMA_FIFO ||
	    FUNC15(FUNC5(host->io_base))) {
		/* Something is left in the FIFO, something is wrong */
		FUNC7(mtd->dev.parent, "DMA FIFO failure\n");
		status = -EIO;
	}

	/* Stop DMA & HW ECC */
	FUNC18(FUNC15(FUNC1(host->io_base)) & ~SLCCTRL_DMA_START,
	       FUNC1(host->io_base));
	FUNC18(FUNC15(FUNC0(host->io_base)) &
	       ~(SLCCFG_DMA_DIR | SLCCFG_ECC_EN | SLCCFG_DMA_ECC |
		 SLCCFG_DMA_BURST), FUNC0(host->io_base));

	if (!dma_mapped && read)
		FUNC11(buf, host->data_buf, mtd->writesize);

	return status;
}