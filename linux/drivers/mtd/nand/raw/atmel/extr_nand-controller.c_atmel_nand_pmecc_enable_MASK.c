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
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct atmel_nand_controller {int /*<<< orphan*/  dev; } ;
struct atmel_nand {int /*<<< orphan*/  pmecc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct atmel_nand* FUNC2 (struct nand_chip*) ; 
 struct atmel_nand_controller* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, int op, bool raw)
{
	struct atmel_nand *nand = FUNC2(chip);
	struct atmel_nand_controller *nc;
	int ret;

	nc = FUNC3(chip->controller);

	if (raw)
		return 0;

	ret = FUNC0(nand->pmecc, op);
	if (ret)
		FUNC1(nc->dev,
			"Failed to enable ECC engine (err = %d)\n", ret);

	return ret;
}