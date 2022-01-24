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
typedef  int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int /*<<< orphan*/  cs_sel; } ;
struct TYPE_2__ {scalar_t__ steps; } ;
struct nand_chip {int options; TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int FMC2_BBM_LEN ; 
 scalar_t__ FMC2_CSQAR1 ; 
 scalar_t__ FMC2_CSQAR2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FMC2_CSQCFGR1 ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FMC2_CSQCFGR1_CMD1T ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FMC2_CSQCFGR1_CMD2EN ; 
 int FMC2_CSQCFGR1_CMD2T ; 
 int FMC2_CSQCFGR1_DMADEN ; 
 scalar_t__ FMC2_CSQCFGR2 ; 
 int FMC2_CSQCFGR2_DMASEN ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FMC2_CSQCFGR2_RCMD1T ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FMC2_CSQCFGR2_RCMD2EN ; 
 int FMC2_CSQCFGR2_RCMD2T ; 
 int FMC2_CSQCFGR2_SQSDTEN ; 
 scalar_t__ FMC2_CSQCFGR3 ; 
 int FMC2_CSQCFGR3_AC4T ; 
 int FMC2_CSQCFGR3_AC5T ; 
 int FMC2_CSQCFGR3_RAC2T ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FMC2_PCR ; 
 int FMC2_PCR_WEN ; 
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  NAND_CMD_READ0 ; 
 int /*<<< orphan*/  NAND_CMD_READSTART ; 
 int /*<<< orphan*/  NAND_CMD_RNDIN ; 
 int /*<<< orphan*/  NAND_CMD_RNDOUT ; 
 int /*<<< orphan*/  NAND_CMD_RNDOUTSTART ; 
 int /*<<< orphan*/  NAND_CMD_SEQIN ; 
 int NAND_ROW_ADDR_3 ; 
 struct mtd_info* FUNC11 (struct nand_chip*) ; 
 int FUNC12 (scalar_t__) ; 
 struct stm32_fmc2_nfc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct nand_chip *chip, int page,
				    int raw, bool write_data)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC13(chip->controller);
	struct mtd_info *mtd = FUNC11(chip);
	u32 csqcfgr1, csqcfgr2, csqcfgr3;
	u32 csqar1, csqar2;
	u32 ecc_offset = mtd->writesize + FMC2_BBM_LEN;
	u32 pcr = FUNC12(fmc2->io_base + FMC2_PCR);

	if (write_data)
		pcr |= FMC2_PCR_WEN;
	else
		pcr &= ~FMC2_PCR_WEN;
	FUNC14(pcr, fmc2->io_base + FMC2_PCR);

	/*
	 * - Set Program Page/Page Read command
	 * - Enable DMA request data
	 * - Set timings
	 */
	csqcfgr1 = FMC2_CSQCFGR1_DMADEN | FMC2_CSQCFGR1_CMD1T;
	if (write_data)
		csqcfgr1 |= FUNC6(NAND_CMD_SEQIN);
	else
		csqcfgr1 |= FUNC6(NAND_CMD_READ0) |
			    FMC2_CSQCFGR1_CMD2EN |
			    FUNC7(NAND_CMD_READSTART) |
			    FMC2_CSQCFGR1_CMD2T;

	/*
	 * - Set Random Data Input/Random Data Read command
	 * - Enable the sequencer to access the Spare data area
	 * - Enable  DMA request status decoding for read
	 * - Set timings
	 */
	if (write_data)
		csqcfgr2 = FUNC8(NAND_CMD_RNDIN);
	else
		csqcfgr2 = FUNC8(NAND_CMD_RNDOUT) |
			   FMC2_CSQCFGR2_RCMD2EN |
			   FUNC9(NAND_CMD_RNDOUTSTART) |
			   FMC2_CSQCFGR2_RCMD1T |
			   FMC2_CSQCFGR2_RCMD2T;
	if (!raw) {
		csqcfgr2 |= write_data ? 0 : FMC2_CSQCFGR2_DMASEN;
		csqcfgr2 |= FMC2_CSQCFGR2_SQSDTEN;
	}

	/*
	 * - Set the number of sectors to be written
	 * - Set timings
	 */
	csqcfgr3 = FUNC10(chip->ecc.steps - 1);
	if (write_data) {
		csqcfgr3 |= FMC2_CSQCFGR3_RAC2T;
		if (chip->options & NAND_ROW_ADDR_3)
			csqcfgr3 |= FMC2_CSQCFGR3_AC5T;
		else
			csqcfgr3 |= FMC2_CSQCFGR3_AC4T;
	}

	/*
	 * Set the fourth first address cycles
	 * Byte 1 and byte 2 => column, we start at 0x0
	 * Byte 3 and byte 4 => page
	 */
	csqar1 = FUNC0(page);
	csqar1 |= FUNC1(page >> 8);

	/*
	 * - Set chip enable number
	 * - Set ECC byte offset in the spare area
	 * - Calculate the number of address cycles to be issued
	 * - Set byte 5 of address cycle if needed
	 */
	csqar2 = FUNC3(fmc2->cs_sel);
	if (chip->options & NAND_BUSWIDTH_16)
		csqar2 |= FUNC4(ecc_offset >> 1);
	else
		csqar2 |= FUNC4(ecc_offset);
	if (chip->options & NAND_ROW_ADDR_3) {
		csqcfgr1 |= FUNC5(5);
		csqar2 |= FUNC2(page >> 16);
	} else {
		csqcfgr1 |= FUNC5(4);
	}

	FUNC14(csqcfgr1, fmc2->io_base + FMC2_CSQCFGR1);
	FUNC14(csqcfgr2, fmc2->io_base + FMC2_CSQCFGR2);
	FUNC14(csqcfgr3, fmc2->io_base + FMC2_CSQCFGR3);
	FUNC14(csqar1, fmc2->io_base + FMC2_CSQAR1);
	FUNC14(csqar2, fmc2->io_base + FMC2_CSQAR2);
}