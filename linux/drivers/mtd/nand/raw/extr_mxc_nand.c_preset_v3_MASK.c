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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct nand_chip {int options; TYPE_1__ ecc; int /*<<< orphan*/  pagemask; } ;
struct mxc_nand_host {int eccsize; TYPE_2__* devtype_data; } ;
struct mtd_info {int oobsize; int writesize; int erasesize; } ;
struct TYPE_4__ {int /*<<< orphan*/  ppb_shift; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 scalar_t__ NAND_ECC_HW ; 
 int NAND_MAX_CHIPS ; 
 scalar_t__ NFC_V3_CONFIG1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NFC_V3_CONFIG2 ; 
 int NFC_V3_CONFIG2_2CMD_PHASES ; 
 int NFC_V3_CONFIG2_ECC_EN ; 
 int NFC_V3_CONFIG2_ECC_MODE_8 ; 
 int NFC_V3_CONFIG2_INT_MSK ; 
 int NFC_V3_CONFIG2_NUM_ADDR_PHASE0 ; 
 int FUNC1 (int) ; 
 int NFC_V3_CONFIG2_ONE_CYCLE ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int NFC_V3_CONFIG2_PS_2048 ; 
 int NFC_V3_CONFIG2_PS_4096 ; 
 int NFC_V3_CONFIG2_PS_512 ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ NFC_V3_CONFIG3 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int NFC_V3_CONFIG3_FW8 ; 
 int NFC_V3_CONFIG3_NO_SDMA ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int NFC_V3_CONFIG3_RBB_MODE ; 
 int FUNC7 (int) ; 
 scalar_t__ NFC_V3_DELAY_LINE ; 
 scalar_t__ NFC_V3_IPC ; 
 int NFC_V3_IPC_CREQ ; 
 scalar_t__ NFC_V3_WRPROT ; 
 int NFC_V3_WRPROT_BLS_UNLOCK ; 
 int NFC_V3_WRPROT_UNLOCK ; 
 scalar_t__ NFC_V3_WRPROT_UNLOCK_BLK_ADD0 ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mtd_info*) ; 
 struct nand_chip* FUNC11 (struct mtd_info*) ; 
 struct mxc_nand_host* FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC11(mtd);
	struct mxc_nand_host *host = FUNC12(chip);
	uint32_t config2, config3;
	int i, addr_phases;

	FUNC13(FUNC0(0), NFC_V3_CONFIG1);
	FUNC13(NFC_V3_IPC_CREQ, NFC_V3_IPC);

	/* Unlock the internal RAM Buffer */
	FUNC13(NFC_V3_WRPROT_BLS_UNLOCK | NFC_V3_WRPROT_UNLOCK,
			NFC_V3_WRPROT);

	/* Blocks to be unlocked */
	for (i = 0; i < NAND_MAX_CHIPS; i++)
		FUNC13(0xffff << 16, NFC_V3_WRPROT_UNLOCK_BLK_ADD0 + (i << 2));

	FUNC13(0, NFC_V3_IPC);

	config2 = NFC_V3_CONFIG2_ONE_CYCLE |
		NFC_V3_CONFIG2_2CMD_PHASES |
		FUNC3(mtd->oobsize >> 1) |
		FUNC4(0x70) |
		NFC_V3_CONFIG2_INT_MSK |
		NFC_V3_CONFIG2_NUM_ADDR_PHASE0;

	addr_phases = FUNC9(chip->pagemask) >> 3;

	if (mtd->writesize == 2048) {
		config2 |= NFC_V3_CONFIG2_PS_2048;
		config2 |= FUNC1(addr_phases);
	} else if (mtd->writesize == 4096) {
		config2 |= NFC_V3_CONFIG2_PS_4096;
		config2 |= FUNC1(addr_phases);
	} else {
		config2 |= NFC_V3_CONFIG2_PS_512;
		config2 |= FUNC1(addr_phases - 1);
	}

	if (mtd->writesize) {
		if (chip->ecc.mode == NAND_ECC_HW)
			config2 |= NFC_V3_CONFIG2_ECC_EN;

		config2 |= FUNC2(
				FUNC8(mtd->erasesize / mtd->writesize) - 6,
				host->devtype_data->ppb_shift);
		host->eccsize = FUNC10(mtd);
		if (host->eccsize == 8)
			config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
	}

	FUNC13(config2, NFC_V3_CONFIG2);

	config3 = FUNC6(0) |
			NFC_V3_CONFIG3_NO_SDMA |
			NFC_V3_CONFIG3_RBB_MODE |
			FUNC7(6) | /* Reset default */
			FUNC5(0);

	if (!(chip->options & NAND_BUSWIDTH_16))
		config3 |= NFC_V3_CONFIG3_FW8;

	FUNC13(config3, NFC_V3_CONFIG3);

	FUNC13(0, NFC_V3_DELAY_LINE);
}