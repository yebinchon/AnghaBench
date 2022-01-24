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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int (* waitfunc ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_4__ legacy; int /*<<< orphan*/  oob_poi; int /*<<< orphan*/  controller; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int ncmds; int /*<<< orphan*/  cs; int /*<<< orphan*/ * cmds; int /*<<< orphan*/  data; } ;
struct atmel_hsmc_nand_controller {TYPE_3__ base; TYPE_1__ op; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_NFC_WRITE_DATA ; 
 int EIO ; 
 int /*<<< orphan*/  NAND_CMD_PAGEPROG ; 
 int /*<<< orphan*/  NAND_CMD_SEQIN ; 
 int /*<<< orphan*/  NAND_ECC_WRITE ; 
 int NAND_STATUS_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (struct atmel_hsmc_nand_controller*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct mtd_info* FUNC8 (struct nand_chip*) ; 
 int FUNC9 (struct nand_chip*) ; 
 struct atmel_nand* FUNC10 (struct nand_chip*) ; 
 struct atmel_hsmc_nand_controller* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct nand_chip *chip,
					  const u8 *buf, bool oob_required,
					  int page, bool raw)
{
	struct mtd_info *mtd = FUNC8(chip);
	struct atmel_nand *nand = FUNC10(chip);
	struct atmel_hsmc_nand_controller *nc;
	int ret, status;

	nc = FUNC11(chip->controller);

	FUNC4(chip, buf, false);

	nc->op.cmds[0] = NAND_CMD_SEQIN;
	nc->op.ncmds = 1;
	FUNC6(chip, page, 0x0);
	nc->op.cs = nand->activecs->id;
	nc->op.data = ATMEL_NFC_WRITE_DATA;

	ret = FUNC1(chip, NAND_ECC_WRITE, raw);
	if (ret)
		return ret;

	ret = FUNC5(nc, false);
	if (ret) {
		FUNC0(chip, raw);
		FUNC7(nc->base.dev,
			"Failed to transfer NAND page data (err = %d)\n",
			ret);
		return ret;
	}

	ret = FUNC2(chip, raw);

	FUNC0(chip, raw);

	if (ret)
		return ret;

	FUNC3(chip, chip->oob_poi, mtd->oobsize);

	nc->op.cmds[0] = NAND_CMD_PAGEPROG;
	nc->op.ncmds = 1;
	nc->op.cs = nand->activecs->id;
	ret = FUNC5(nc, false);
	if (ret)
		FUNC7(nc->base.dev, "Failed to program NAND page (err = %d)\n",
			ret);

	status = chip->legacy.waitfunc(chip);
	if (status & NAND_STATUS_FAIL)
		return -EIO;

	return ret;
}