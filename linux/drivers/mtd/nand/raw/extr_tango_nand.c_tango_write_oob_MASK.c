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
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip, int page)
{
	FUNC0(chip, page, 0, NULL, 0);
	FUNC2(chip, NULL, chip->oob_poi);
	return FUNC1(chip);
}