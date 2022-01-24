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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int NFC_ACTIVE_CS_MASK ; 
 int NFC_ACTIVE_CS_SHIFT ; 
 int /*<<< orphan*/  NFC_BUF_ADDR ; 
 int NFC_CE ; 
 int /*<<< orphan*/  NFC_CONFIG1 ; 
 struct mtd_info* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *nand, int chip)
{
	struct mtd_info *mtd = FUNC0(nand);

	if (chip < 0) {
		FUNC1(mtd, NFC_CONFIG1, NFC_CE);
		return;
	}

	FUNC1(mtd, NFC_BUF_ADDR, NFC_ACTIVE_CS_MASK);
	FUNC2(mtd, NFC_BUF_ADDR, (chip << NFC_ACTIVE_CS_SHIFT) &
							NFC_ACTIVE_CS_MASK);
	FUNC2(mtd, NFC_CONFIG1, NFC_CE);
}