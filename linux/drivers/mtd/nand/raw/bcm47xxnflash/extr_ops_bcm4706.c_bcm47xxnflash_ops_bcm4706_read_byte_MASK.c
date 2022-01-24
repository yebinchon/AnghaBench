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
typedef  int u8 ;
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct bcma_drv_cc {int dummy; } ;
struct bcm47xxnflash {int curr_command; int curr_column; int* id_data; struct bcma_drv_cc* cc; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  BCMA_CC_NFLASH_DATA ; 
#define  NAND_CMD_READID 130 
#define  NAND_CMD_READOOB 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  NCTL_READ ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int*,int) ; 
 int FUNC3 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 struct bcm47xxnflash* FUNC4 (struct nand_chip*) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static u8 FUNC7(struct nand_chip *nand_chip)
{
	struct mtd_info *mtd = FUNC5(nand_chip);
	struct bcm47xxnflash *b47n = FUNC4(nand_chip);
	struct bcma_drv_cc *cc = b47n->cc;
	u32 tmp = 0;

	switch (b47n->curr_command) {
	case NAND_CMD_READID:
		if (b47n->curr_column >= FUNC0(b47n->id_data)) {
			FUNC6("Requested invalid id_data: %d\n",
			       b47n->curr_column);
			return 0;
		}
		return b47n->id_data[b47n->curr_column++];
	case NAND_CMD_STATUS:
		if (FUNC1(cc, NCTL_READ))
			return 0;
		return FUNC3(cc, BCMA_CC_NFLASH_DATA) & 0xff;
	case NAND_CMD_READOOB:
		FUNC2(mtd, (u8 *)&tmp, 4);
		return tmp & 0xFF;
	}

	FUNC6("Invalid command for byte read: 0x%X\n", b47n->curr_command);
	return 0;
}