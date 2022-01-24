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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int dummy; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int /*<<< orphan*/  virt; } ;
struct TYPE_4__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct atmel_nand* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static u8 FUNC2(struct nand_chip *chip)
{
	struct atmel_nand *nand = FUNC1(chip);

	return FUNC0(nand->activecs->io.virt);
}