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
typedef  int /*<<< orphan*/  u8 ;
struct vf610_nfc {int data_access; } ;
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 struct vf610_nfc* FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, const u8 *buf,
				    int oob_required, int page)
{
	struct vf610_nfc *nfc = FUNC0(chip);
	struct mtd_info *mtd = FUNC3(chip);
	int ret;

	nfc->data_access = true;
	ret = FUNC1(chip, page, 0, buf, mtd->writesize);
	if (!ret && oob_required)
		ret = FUNC4(chip, chip->oob_poi, mtd->oobsize,
					 false);
	nfc->data_access = false;

	if (ret)
		return ret;

	return FUNC2(chip);
}