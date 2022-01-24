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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int dummy; } ;
struct bcm47xxnflash {int curr_command; } ;

/* Variables and functions */
#define  NAND_CMD_READ0 129 
#define  NAND_CMD_READOOB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct bcm47xxnflash* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *nand_chip,
					       uint8_t *buf, int len)
{
	struct bcm47xxnflash *b47n = FUNC1(nand_chip);

	switch (b47n->curr_command) {
	case NAND_CMD_READ0:
	case NAND_CMD_READOOB:
		FUNC0(FUNC2(nand_chip), buf,
					       len);
		return;
	}

	FUNC3("Invalid command for buf read: 0x%X\n", b47n->curr_command);
}