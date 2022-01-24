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
struct TYPE_7__ {int /*<<< orphan*/  dev_ready; } ;
struct nand_chip {TYPE_3__ legacy; int /*<<< orphan*/  controller; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_8__ {int /*<<< orphan*/  smc; } ;
struct atmel_hsmc_nand_controller {TYPE_4__ base; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HSMC_NFC_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK ; 
 int ATMEL_HSMC_NFC_CFG_RSPARE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK ; 
 int ATMEL_HSMC_NFC_CFG_WSPARE ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_CTRL ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_CTRL_DIS ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_CTRL_EN ; 
 scalar_t__ ATMEL_NAND_NATIVE_RB ; 
 int /*<<< orphan*/  atmel_hsmc_nand_dev_ready ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_nand* FUNC6 (struct nand_chip*) ; 
 struct atmel_hsmc_nand_controller* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nand_chip *chip, int cs)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct atmel_nand *nand = FUNC6(chip);
	struct atmel_hsmc_nand_controller *nc;

	nc = FUNC7(chip->controller);

	FUNC2(chip, cs);

	if (!nand->activecs) {
		FUNC5(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
			     ATMEL_HSMC_NFC_CTRL_DIS);
		return;
	}

	if (nand->activecs->rb.type == ATMEL_NAND_NATIVE_RB)
		chip->legacy.dev_ready = atmel_hsmc_nand_dev_ready;

	FUNC4(nc->base.smc, ATMEL_HSMC_NFC_CFG,
			   ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK |
			   ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK |
			   ATMEL_HSMC_NFC_CFG_RSPARE |
			   ATMEL_HSMC_NFC_CFG_WSPARE,
			   FUNC0(mtd->writesize) |
			   FUNC1(mtd->oobsize) |
			   ATMEL_HSMC_NFC_CFG_RSPARE);
	FUNC5(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
		     ATMEL_HSMC_NFC_CTRL_EN);
}