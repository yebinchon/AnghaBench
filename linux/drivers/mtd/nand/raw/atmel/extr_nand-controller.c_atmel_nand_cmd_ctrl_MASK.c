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
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct atmel_nand_controller {TYPE_3__* caps; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_6__ {scalar_t__ cle_offs; scalar_t__ ale_offs; } ;
struct TYPE_4__ {scalar_t__ virt; } ;
struct TYPE_5__ {TYPE_1__ io; scalar_t__ csgpio; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct atmel_nand* FUNC1 (struct nand_chip*) ; 
 struct atmel_nand_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, int cmd,
				unsigned int ctrl)
{
	struct atmel_nand *nand = FUNC1(chip);
	struct atmel_nand_controller *nc;

	nc = FUNC2(chip->controller);

	if ((ctrl & NAND_CTRL_CHANGE) && nand->activecs->csgpio) {
		if (ctrl & NAND_NCE)
			FUNC0(nand->activecs->csgpio, 0);
		else
			FUNC0(nand->activecs->csgpio, 1);
	}

	if (ctrl & NAND_ALE)
		FUNC3(cmd, nand->activecs->io.virt + nc->caps->ale_offs);
	else if (ctrl & NAND_CLE)
		FUNC3(cmd, nand->activecs->io.virt + nc->caps->cle_offs);
}