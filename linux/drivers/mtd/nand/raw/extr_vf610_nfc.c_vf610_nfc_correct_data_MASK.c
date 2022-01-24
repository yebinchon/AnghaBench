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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int strength; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct vf610_nfc {int data_access; TYPE_2__ chip; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; } ;

/* Variables and functions */
 scalar_t__ ECC_SRAM_ADDR ; 
 scalar_t__ ECC_STATUS ; 
 int ECC_STATUS_ERR_COUNT ; 
 int ECC_STATUS_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vf610_nfc* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct vf610_nfc*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC6(struct nand_chip *chip, uint8_t *dat,
					 uint8_t *oob, int page)
{
	struct vf610_nfc *nfc = FUNC1(chip);
	struct mtd_info *mtd = FUNC4(chip);
	u32 ecc_status_off = FUNC0(0) + ECC_SRAM_ADDR + ECC_STATUS;
	u8 ecc_status;
	u8 ecc_count;
	int flips_threshold = nfc->chip.ecc.strength / 2;

	ecc_status = FUNC5(nfc, ecc_status_off) & 0xff;
	ecc_count = ecc_status & ECC_STATUS_ERR_COUNT;

	if (!(ecc_status & ECC_STATUS_MASK))
		return ecc_count;

	nfc->data_access = true;
	FUNC3(&nfc->chip, page, 0, oob, mtd->oobsize);
	nfc->data_access = false;

	/*
	 * On an erased page, bit count (including OOB) should be zero or
	 * at least less then half of the ECC strength.
	 */
	return FUNC2(dat, nfc->chip.ecc.size, oob,
					   mtd->oobsize, NULL, 0,
					   flips_threshold);
}