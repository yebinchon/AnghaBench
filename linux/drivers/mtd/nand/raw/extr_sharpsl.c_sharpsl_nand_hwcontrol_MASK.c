#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sharpsl_nand {scalar_t__ io; } ;
struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;

/* Variables and functions */
 scalar_t__ FLASHCTL ; 
 int NAND_CMD_NONE ; 
 unsigned int NAND_CTRL_CHANGE ; 
 struct sharpsl_nand* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, int cmd,
				   unsigned int ctrl)
{
	struct sharpsl_nand *sharpsl = FUNC0(FUNC1(chip));

	if (ctrl & NAND_CTRL_CHANGE) {
		unsigned char bits = ctrl & 0x07;

		bits |= (ctrl & 0x01) << 4;

		bits ^= 0x11;

		FUNC3((FUNC2(sharpsl->io + FLASHCTL) & ~0x17) | bits, sharpsl->io + FLASHCTL);
	}

	if (cmd != NAND_CMD_NONE)
		FUNC3(cmd, chip->legacy.IO_ADDR_W);
}