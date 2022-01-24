#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct atmel_nand {TYPE_3__* activecs; } ;
struct TYPE_4__ {int /*<<< orphan*/  smc; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_2__ rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HSMC_NFC_SR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct atmel_nand* FUNC2 (struct nand_chip*) ; 
 struct atmel_hsmc_nand_controller* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip)
{
	struct atmel_nand *nand = FUNC2(chip);
	struct atmel_hsmc_nand_controller *nc;
	u32 status;

	nc = FUNC3(chip->controller);

	FUNC1(nc->base.smc, ATMEL_HSMC_NFC_SR, &status);

	return status & FUNC0(nand->activecs->rb.id);
}