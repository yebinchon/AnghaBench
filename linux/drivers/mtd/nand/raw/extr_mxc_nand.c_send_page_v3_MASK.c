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
typedef  int uint32_t ;
struct nand_chip {int dummy; } ;
struct mxc_nand_host {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_V3_CONFIG1 ; 
 int /*<<< orphan*/  NFC_V3_LAUNCH ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct mxc_nand_host* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd, unsigned int ops)
{
	struct nand_chip *nand_chip = FUNC0(mtd);
	struct mxc_nand_host *host = FUNC1(nand_chip);
	uint32_t tmp;

	tmp = FUNC2(NFC_V3_CONFIG1);
	tmp &= ~(7 << 4);
	FUNC4(tmp, NFC_V3_CONFIG1);

	/* transfer data from NFC ram to nand */
	FUNC4(ops, NFC_V3_LAUNCH);

	FUNC3(host, false);
}