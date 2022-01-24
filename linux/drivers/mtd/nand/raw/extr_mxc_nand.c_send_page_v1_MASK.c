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
struct nand_chip {int dummy; } ;
struct mxc_nand_host {int active_cs; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_V1_V2_BUF_ADDR ; 
 int /*<<< orphan*/  NFC_V1_V2_CONFIG2 ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct mxc_nand_host* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd, unsigned int ops)
{
	struct nand_chip *nand_chip = FUNC0(mtd);
	struct mxc_nand_host *host = FUNC1(nand_chip);
	int bufs, i;

	if (mtd->writesize > 512)
		bufs = 4;
	else
		bufs = 1;

	for (i = 0; i < bufs; i++) {

		/* NANDFC buffer 0 is used for page read/write */
		FUNC3((host->active_cs << 4) | i, NFC_V1_V2_BUF_ADDR);

		FUNC3(ops, NFC_V1_V2_CONFIG2);

		/* Wait for operation to complete */
		FUNC2(host, true);
	}
}