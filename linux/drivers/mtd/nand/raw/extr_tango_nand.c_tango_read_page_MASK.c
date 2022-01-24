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
typedef  int /*<<< orphan*/  u8 ;
struct tango_nfc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_oob_raw ) (struct nand_chip*,int) ;int /*<<< orphan*/  (* read_oob ) (struct nand_chip*,int) ;} ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  NFC_READ ; 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct tango_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int) ; 
 struct tango_nfc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, u8 *buf,
			   int oob_required, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct tango_nfc *nfc = FUNC6(chip->controller);
	int err, res, len = mtd->writesize;

	if (oob_required)
		chip->ecc.read_oob(chip, page);

	err = FUNC2(nfc, DMA_FROM_DEVICE, NFC_READ, buf, len, page);
	if (err)
		return err;

	res = FUNC1(chip);
	if (res < 0) {
		chip->ecc.read_oob_raw(chip, page);
		res = FUNC0(chip, buf);
	}

	return res;
}