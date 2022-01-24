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
struct nand_chip {int options; } ;
struct mtd_info {int dummy; } ;
struct hinfc_host {unsigned int command; int addr_cycle; int* addr_value; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 unsigned int NAND_CMD_ERASE1 ; 
 int NAND_ROW_ADDR_3 ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct hinfc_host* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, int column, int page_addr)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct hinfc_host *host = FUNC1(chip);
	unsigned int command = host->command;

	host->addr_cycle    = 0;
	host->addr_value[0] = 0;
	host->addr_value[1] = 0;

	/* Serially input address */
	if (column != -1) {
		/* Adjust columns for 16 bit buswidth */
		if (chip->options & NAND_BUSWIDTH_16 &&
				!FUNC2(command))
			column >>= 1;

		host->addr_value[0] = column & 0xffff;
		host->addr_cycle    = 2;
	}
	if (page_addr != -1) {
		host->addr_value[0] |= (page_addr & 0xffff)
			<< (host->addr_cycle * 8);
		host->addr_cycle    += 2;
		if (chip->options & NAND_ROW_ADDR_3) {
			host->addr_cycle += 1;
			if (host->command == NAND_CMD_ERASE1)
				host->addr_value[0] |= ((page_addr >> 16) & 0xff) << 16;
			else
				host->addr_value[1] |= ((page_addr >> 16) & 0xff);
		}
	}
}