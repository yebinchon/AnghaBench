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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct lpc32xx_nand_host {int mlcsubpages; int /*<<< orphan*/  io_base; int /*<<< orphan*/ * dma_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* high_memory ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct lpc32xx_nand_host* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 scalar_t__ use_dma ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct nand_chip *chip,
				       const uint8_t *buf, int oob_required,
				       int page)
{
	struct mtd_info *mtd = FUNC9(chip);
	struct lpc32xx_nand_host *host = FUNC6(chip);
	const uint8_t *oobbuf = chip->oob_poi;
	uint8_t *dma_buf = (uint8_t *)buf;
	int res;
	int i, j;

	if (use_dma && (void *)buf >= high_memory) {
		dma_buf = host->dma_buf;
		FUNC5(dma_buf, buf, mtd->writesize);
	}

	FUNC7(chip, page, 0, NULL, 0);

	for (i = 0; i < host->mlcsubpages; i++) {
		/* Start Encode */
		FUNC10(0x00, FUNC2(host->io_base));

		/* Write 512 + 6 Bytes to Buffer */
		if (use_dma) {
			res = FUNC4(mtd, dma_buf + i * 512, 512,
					       DMA_MEM_TO_DEV);
			if (res)
				return res;
		} else {
			for (j = 0; j < (512 >> 2); j++) {
				FUNC11(*((uint32_t *)(buf)),
				       FUNC0(host->io_base));
				buf += 4;
			}
		}
		FUNC11(*((uint32_t *)(oobbuf)), FUNC0(host->io_base));
		oobbuf += 4;
		FUNC12(*((uint16_t *)(oobbuf)), FUNC0(host->io_base));
		oobbuf += 12;

		/* Auto Encode w/ Bit 8 = 0 (see LPC MLC Controller manual) */
		FUNC10(0x00, FUNC1(host->io_base));

		/* Wait for Controller Ready */
		FUNC3(chip);
	}

	return FUNC8(chip);
}