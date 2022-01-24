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
struct TYPE_3__ {int strength; int size; int steps; } ;
struct nand_chip {int phys_erase_shift; int page_shift; int options; TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct denali_controller {scalar_t__ reg; int /*<<< orphan*/  active_bank; } ;
struct denali_chip_sel {int hwhr2_and_we_2_re; int tcwaw_and_addr_2_data; int re_2_we; int acc_clks; int rdwr_en_lo_cnt; int rdwr_en_hi_cnt; int cs_setup_cnt; int re_2_re; int /*<<< orphan*/  bank; } ;
struct TYPE_4__ {struct denali_chip_sel* sels; } ;

/* Variables and functions */
 scalar_t__ ACC_CLKS ; 
 scalar_t__ CFG_DATA_BLOCK_SIZE ; 
 scalar_t__ CFG_LAST_DATA_BLOCK_SIZE ; 
 scalar_t__ CFG_NUM_DATA_BLOCKS ; 
 scalar_t__ CS_SETUP_CNT ; 
 scalar_t__ DEVICE_MAIN_AREA_SIZE ; 
 scalar_t__ DEVICE_SPARE_AREA_SIZE ; 
 scalar_t__ DEVICE_WIDTH ; 
 scalar_t__ ECC_CORRECTION ; 
 int /*<<< orphan*/  ECC_CORRECTION__ERASE_THRESHOLD ; 
 int /*<<< orphan*/  ECC_CORRECTION__VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int NAND_BUSWIDTH_16 ; 
 int NAND_KEEP_TIMINGS ; 
 int NAND_ROW_ADDR_3 ; 
 scalar_t__ PAGES_PER_BLOCK ; 
 scalar_t__ RDWR_EN_HI_CNT ; 
 scalar_t__ RDWR_EN_LO_CNT ; 
 scalar_t__ RE_2_RE ; 
 scalar_t__ RE_2_WE ; 
 scalar_t__ TCWAW_AND_ADDR_2_DATA ; 
 scalar_t__ TWHR2_AND_WE_2_RE ; 
 scalar_t__ TWO_ROW_ADDR_CYCLES ; 
 int TWO_ROW_ADDR_CYCLES__FLAG ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 TYPE_2__* FUNC3 (struct nand_chip*) ; 
 struct denali_controller* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *chip, int cs)
{
	struct denali_controller *denali = FUNC4(chip);
	struct denali_chip_sel *sel = &FUNC3(chip)->sels[cs];
	struct mtd_info *mtd = FUNC2(chip);

	denali->active_bank = sel->bank;

	FUNC1(1 << (chip->phys_erase_shift - chip->page_shift),
		  denali->reg + PAGES_PER_BLOCK);
	FUNC1(chip->options & NAND_BUSWIDTH_16 ? 1 : 0,
		  denali->reg + DEVICE_WIDTH);
	FUNC1(mtd->writesize, denali->reg + DEVICE_MAIN_AREA_SIZE);
	FUNC1(mtd->oobsize, denali->reg + DEVICE_SPARE_AREA_SIZE);
	FUNC1(chip->options & NAND_ROW_ADDR_3 ?
		  0 : TWO_ROW_ADDR_CYCLES__FLAG,
		  denali->reg + TWO_ROW_ADDR_CYCLES);
	FUNC1(FUNC0(ECC_CORRECTION__ERASE_THRESHOLD, 1) |
		  FUNC0(ECC_CORRECTION__VALUE, chip->ecc.strength),
		  denali->reg + ECC_CORRECTION);
	FUNC1(chip->ecc.size, denali->reg + CFG_DATA_BLOCK_SIZE);
	FUNC1(chip->ecc.size, denali->reg + CFG_LAST_DATA_BLOCK_SIZE);
	FUNC1(chip->ecc.steps, denali->reg + CFG_NUM_DATA_BLOCKS);

	if (chip->options & NAND_KEEP_TIMINGS)
		return;

	/* update timing registers unless NAND_KEEP_TIMINGS is set */
	FUNC1(sel->hwhr2_and_we_2_re, denali->reg + TWHR2_AND_WE_2_RE);
	FUNC1(sel->tcwaw_and_addr_2_data,
		  denali->reg + TCWAW_AND_ADDR_2_DATA);
	FUNC1(sel->re_2_we, denali->reg + RE_2_WE);
	FUNC1(sel->acc_clks, denali->reg + ACC_CLKS);
	FUNC1(sel->rdwr_en_lo_cnt, denali->reg + RDWR_EN_LO_CNT);
	FUNC1(sel->rdwr_en_hi_cnt, denali->reg + RDWR_EN_HI_CNT);
	FUNC1(sel->cs_setup_cnt, denali->reg + CS_SETUP_CNT);
	FUNC1(sel->re_2_re, denali->reg + RE_2_RE);
}