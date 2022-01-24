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
struct nand_chip {int dummy; } ;
struct marvell_nand_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ndcb0_csel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int,char*) ; 
 struct marvell_nand_chip* FUNC2 (struct nand_chip*) ; 
 TYPE_1__* FUNC3 (struct marvell_nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip)
{
	struct marvell_nand_chip *marvell_nand = FUNC2(chip);
	int cs_flag = FUNC0(FUNC3(marvell_nand)->ndcb0_csel);

	return FUNC1(chip, cs_flag, "CMDD");
}