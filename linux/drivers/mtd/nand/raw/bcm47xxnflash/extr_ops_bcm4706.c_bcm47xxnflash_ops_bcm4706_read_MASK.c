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
typedef  int u32 ;
struct nand_chip {int pagemask; } ;
struct mtd_info {int dummy; } ;
struct bcm47xxnflash {int curr_page_addr; int curr_column; int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_NFLASH_COL_ADDR ; 
 int /*<<< orphan*/  BCMA_CC_NFLASH_DATA ; 
 int /*<<< orphan*/  BCMA_CC_NFLASH_ROW_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NAND_CMD_READSTART ; 
 int NCTL_CMD0 ; 
 int NCTL_CMD1W ; 
 int NCTL_COL ; 
 int NCTL_CSA ; 
 int NCTL_READ ; 
 int NCTL_ROW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 struct nand_chip* FUNC6 (struct mtd_info*) ; 
 struct bcm47xxnflash* FUNC7 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC8(struct mtd_info *mtd, uint8_t *buf,
					   int len)
{
	struct nand_chip *nand_chip = FUNC6(mtd);
	struct bcm47xxnflash *b47n = FUNC7(nand_chip);

	u32 ctlcode;
	u32 *dest = (u32 *)buf;
	int i;
	int toread;

	FUNC0(b47n->curr_page_addr & ~nand_chip->pagemask);
	/* Don't validate column using nand_chip->page_shift, it may be bigger
	 * when accessing OOB */

	while (len) {
		/* We can read maximum of 0x200 bytes at once */
		toread = FUNC5(len, 0x200);

		/* Set page and column */
		FUNC4(b47n->cc, BCMA_CC_NFLASH_COL_ADDR,
				b47n->curr_column);
		FUNC4(b47n->cc, BCMA_CC_NFLASH_ROW_ADDR,
				b47n->curr_page_addr);

		/* Prepare to read */
		ctlcode = NCTL_CSA | NCTL_CMD1W | NCTL_ROW | NCTL_COL |
			  NCTL_CMD0;
		ctlcode |= NAND_CMD_READSTART << 8;
		if (FUNC1(b47n->cc, ctlcode))
			return;
		if (FUNC2(b47n->cc))
			return;

		/* Eventually read some data :) */
		for (i = 0; i < toread; i += 4, dest++) {
			ctlcode = NCTL_CSA | 0x30000000 | NCTL_READ;
			if (i == toread - 4) /* Last read goes without that */
				ctlcode &= ~NCTL_CSA;
			if (FUNC1(b47n->cc,
							      ctlcode))
				return;
			*dest = FUNC3(b47n->cc, BCMA_CC_NFLASH_DATA);
		}

		b47n->curr_column += toread;
		len -= toread;
	}
}