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
struct xway_nand_data {int /*<<< orphan*/  csflags; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EBU_NAND_CON ; 
 int /*<<< orphan*/  NAND_CON_CE ; 
 int /*<<< orphan*/  NAND_CON_NANDM ; 
 int /*<<< orphan*/  ebu_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xway_nand_data* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *chip, int select)
{
	struct xway_nand_data *data = FUNC2(chip);

	switch (select) {
	case -1:
		FUNC1(NAND_CON_CE, 0, EBU_NAND_CON);
		FUNC1(NAND_CON_NANDM, 0, EBU_NAND_CON);
		FUNC4(&ebu_lock, data->csflags);
		break;
	case 0:
		FUNC3(&ebu_lock, data->csflags);
		FUNC1(0, NAND_CON_NANDM, EBU_NAND_CON);
		FUNC1(0, NAND_CON_CE, EBU_NAND_CON);
		break;
	default:
		FUNC0();
	}
}