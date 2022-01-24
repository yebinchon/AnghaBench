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
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct atmel_nand {int /*<<< orphan*/  node; struct nand_chip base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct atmel_nand *nand)
{
	struct nand_chip *chip = &nand->base;
	struct mtd_info *mtd = FUNC3(chip);
	int ret;

	ret = FUNC1(mtd);
	if (ret)
		return ret;

	FUNC2(chip);
	FUNC0(&nand->node);

	return 0;
}