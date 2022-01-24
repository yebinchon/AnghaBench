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
struct nand_operation {int /*<<< orphan*/  cs; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,struct nand_operation const*,int) ; 
 int /*<<< orphan*/  tegra_nand_op_parser ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip,
			      const struct nand_operation *op,
			      bool check_only)
{
	FUNC1(chip, op->cs);
	return FUNC0(chip, &tegra_nand_op_parser, op,
				      check_only);
}