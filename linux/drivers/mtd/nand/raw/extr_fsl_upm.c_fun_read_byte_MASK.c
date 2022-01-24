#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct fsl_upm_nand {TYPE_2__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 struct fsl_upm_nand* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC3(struct nand_chip *chip)
{
	struct fsl_upm_nand *fun = FUNC2(FUNC1(chip));

	return FUNC0(fun->chip.legacy.IO_ADDR_R);
}