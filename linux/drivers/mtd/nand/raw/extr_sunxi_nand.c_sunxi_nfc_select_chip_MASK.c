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
struct sunxi_nfc {scalar_t__ clk_rate; scalar_t__ regs; int /*<<< orphan*/  mod_clk; } ;
struct sunxi_nand_chip_sel {scalar_t__ rb; int /*<<< orphan*/  cs; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct sunxi_nand_chip {unsigned int nsels; scalar_t__ clk_rate; int timing_ctl; int timing_cfg; struct sunxi_nand_chip_sel* sels; TYPE_1__ nand; } ;
struct nand_chip {int /*<<< orphan*/  page_shift; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NFC_CE_SEL_MSK ; 
 int NFC_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NFC_PAGE_SHIFT_MSK ; 
 int FUNC2 (scalar_t__) ; 
 int NFC_RB_SEL_MSK ; 
 scalar_t__ NFC_REG_CTL ; 
 scalar_t__ NFC_REG_SPARE_AREA ; 
 scalar_t__ NFC_REG_TIMING_CFG ; 
 scalar_t__ NFC_REG_TIMING_CTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (scalar_t__) ; 
 struct sunxi_nand_chip* FUNC6 (struct nand_chip*) ; 
 struct sunxi_nfc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct nand_chip *nand, unsigned int cs)
{
	struct mtd_info *mtd = FUNC4(nand);
	struct sunxi_nand_chip *sunxi_nand = FUNC6(nand);
	struct sunxi_nfc *nfc = FUNC7(sunxi_nand->nand.controller);
	struct sunxi_nand_chip_sel *sel;
	u32 ctl;

	if (cs > 0 && cs >= sunxi_nand->nsels)
		return;

	ctl = FUNC5(nfc->regs + NFC_REG_CTL) &
	      ~(NFC_PAGE_SHIFT_MSK | NFC_CE_SEL_MSK | NFC_RB_SEL_MSK | NFC_EN);

	sel = &sunxi_nand->sels[cs];
	ctl |= FUNC0(sel->cs) | NFC_EN | FUNC1(nand->page_shift);
	if (sel->rb >= 0)
		ctl |= FUNC2(sel->rb);

	FUNC8(mtd->writesize, nfc->regs + NFC_REG_SPARE_AREA);

	if (nfc->clk_rate != sunxi_nand->clk_rate) {
		FUNC3(nfc->mod_clk, sunxi_nand->clk_rate);
		nfc->clk_rate = sunxi_nand->clk_rate;
	}

	FUNC8(sunxi_nand->timing_ctl, nfc->regs + NFC_REG_TIMING_CTL);
	FUNC8(sunxi_nand->timing_cfg, nfc->regs + NFC_REG_TIMING_CFG);
	FUNC8(ctl, nfc->regs + NFC_REG_CTL);
}