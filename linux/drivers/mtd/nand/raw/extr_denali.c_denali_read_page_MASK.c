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
struct nand_chip {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct denali_controller {int caps; } ;

/* Variables and functions */
 int DENALI_CAP_HW_ECC_FIXUP ; 
 int EBADMSG ; 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,unsigned long,int) ; 
 int FUNC1 (struct nand_chip*,unsigned long*) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct nand_chip*,int) ; 
 int FUNC4 (struct nand_chip*,unsigned long*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 struct denali_controller* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, u8 *buf,
			    int oob_required, int page)
{
	struct denali_controller *denali = FUNC6(chip);
	struct mtd_info *mtd = FUNC5(chip);
	unsigned long uncor_ecc_flags = 0;
	int stat = 0;
	int ret;

	ret = FUNC2(chip, buf, mtd->writesize, page, false);
	if (ret && ret != -EBADMSG)
		return ret;

	if (denali->caps & DENALI_CAP_HW_ECC_FIXUP)
		stat = FUNC1(chip, &uncor_ecc_flags);
	else if (ret == -EBADMSG)
		stat = FUNC4(chip, &uncor_ecc_flags, buf);

	if (stat < 0)
		return stat;

	if (uncor_ecc_flags) {
		ret = FUNC3(chip, page);
		if (ret)
			return ret;

		stat = FUNC0(chip, buf,
						uncor_ecc_flags, stat);
	}

	return stat;
}