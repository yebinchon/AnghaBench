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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_fmc2_timings {int /*<<< orphan*/  thiz; int /*<<< orphan*/  thold_att; int /*<<< orphan*/  twait; int /*<<< orphan*/  tset_att; int /*<<< orphan*/  thold_mem; int /*<<< orphan*/  tset_mem; int /*<<< orphan*/  tar; int /*<<< orphan*/  tclr; } ;
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;
struct stm32_fmc2_nand {struct stm32_fmc2_timings timings; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 scalar_t__ FMC2_PATT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FMC2_PCR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMC2_PCR_TAR_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMC2_PCR_TCLR_MASK ; 
 scalar_t__ FMC2_PMEM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct stm32_fmc2_nand* FUNC11 (struct nand_chip*) ; 
 struct stm32_fmc2_nfc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct nand_chip *chip)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC12(chip->controller);
	struct stm32_fmc2_nand *nand = FUNC11(chip);
	struct stm32_fmc2_timings *timings = &nand->timings;
	u32 pcr = FUNC10(fmc2->io_base + FMC2_PCR);
	u32 pmem, patt;

	/* Set tclr/tar timings */
	pcr &= ~FMC2_PCR_TCLR_MASK;
	pcr |= FUNC5(timings->tclr);
	pcr &= ~FMC2_PCR_TAR_MASK;
	pcr |= FUNC4(timings->tar);

	/* Set tset/twait/thold/thiz timings in common bank */
	pmem = FUNC8(timings->tset_mem);
	pmem |= FUNC9(timings->twait);
	pmem |= FUNC7(timings->thold_mem);
	pmem |= FUNC6(timings->thiz);

	/* Set tset/twait/thold/thiz timings in attribut bank */
	patt = FUNC2(timings->tset_att);
	patt |= FUNC3(timings->twait);
	patt |= FUNC1(timings->thold_att);
	patt |= FUNC0(timings->thiz);

	FUNC13(pcr, fmc2->io_base + FMC2_PCR);
	FUNC13(pmem, fmc2->io_base + FMC2_PMEM);
	FUNC13(patt, fmc2->io_base + FMC2_PATT);
}