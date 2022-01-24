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
struct nand_flash_dev {int dummy; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct nand_chip*,unsigned int,struct nand_flash_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct nand_chip*) ; 

int FUNC5(struct nand_chip *chip, unsigned int maxchips,
		       struct nand_flash_dev *ids)
{
	int ret;

	if (!maxchips)
		return -EINVAL;

	ret = FUNC2(chip, maxchips, ids);
	if (ret)
		return ret;

	ret = FUNC0(chip);
	if (ret)
		goto cleanup_ident;

	ret = FUNC4(chip);
	if (ret)
		goto detach_chip;

	return 0;

detach_chip:
	FUNC1(chip);
cleanup_ident:
	FUNC3(chip);

	return ret;
}