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
struct TYPE_2__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  strength; int /*<<< orphan*/  size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {scalar_t__ oobsize; } ;
struct denali_controller {int /*<<< orphan*/  dev; scalar_t__ oob_skip_bytes; int /*<<< orphan*/  ecc_caps; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 struct denali_controller* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip)
{
	struct denali_controller *denali = FUNC5(chip);
	struct mtd_info *mtd = FUNC4(chip);
	int ret;

	ret = FUNC3(chip, denali->ecc_caps,
				   mtd->oobsize - denali->oob_skip_bytes);
	if (ret) {
		FUNC2(denali->dev, "Failed to setup ECC settings.\n");
		return ret;
	}

	FUNC1(denali->dev,
		"chosen ECC settings: step=%d, strength=%d, bytes=%d\n",
		chip->ecc.size, chip->ecc.strength, chip->ecc.bytes);

	ret = FUNC0(chip);
	if (ret)
		return ret;

	return 0;
}