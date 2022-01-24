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
struct nand_chip {int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  controller; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;
struct TYPE_3__ {scalar_t__ virt; int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {scalar_t__ dmac; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ sram; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 struct atmel_hsmc_nand_controller* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, u8 *buf,
				     bool oob_required)
{
	struct mtd_info *mtd = FUNC2(chip);
	struct atmel_hsmc_nand_controller *nc;
	int ret = -EIO;

	nc = FUNC3(chip->controller);

	if (nc->base.dmac)
		ret = FUNC0(&nc->base, buf, nc->sram.dma,
					      mtd->writesize, DMA_FROM_DEVICE);

	/* Falling back to CPU copy. */
	if (ret)
		FUNC1(buf, nc->sram.virt, mtd->writesize);

	if (oob_required)
		FUNC1(chip->oob_poi, nc->sram.virt + mtd->writesize,
			      mtd->oobsize);
}