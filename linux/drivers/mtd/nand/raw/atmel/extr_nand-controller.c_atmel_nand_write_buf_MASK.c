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
struct nand_chip {int options; int /*<<< orphan*/  controller; } ;
struct atmel_nand_controller {scalar_t__ dmac; } ;
struct atmel_nand {TYPE_2__* activecs; } ;
struct TYPE_3__ {int /*<<< orphan*/  virt; int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int MIN_DMA_LEN ; 
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_nand_controller*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct atmel_nand* FUNC3 (struct nand_chip*) ; 
 struct atmel_nand_controller* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *chip, const u8 *buf, int len)
{
	struct atmel_nand *nand = FUNC3(chip);
	struct atmel_nand_controller *nc;

	nc = FUNC4(chip->controller);

	/*
	 * If the controller supports DMA, the buffer address is DMA-able and
	 * len is long enough to make DMA transfers profitable, let's trigger
	 * a DMA transfer. If it fails, fallback to PIO mode.
	 */
	if (nc->dmac && FUNC5(buf) &&
	    len >= MIN_DMA_LEN &&
	    !FUNC0(nc, (void *)buf, nand->activecs->io.dma,
				     len, DMA_TO_DEVICE))
		return;

	if (chip->options & NAND_BUSWIDTH_16)
		FUNC1(nand->activecs->io.virt, buf, len / 2);
	else
		FUNC2(nand->activecs->io.virt, buf, len);
}