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
struct mtk_nfc_nand_chip {int /*<<< orphan*/ * sels; } ;
struct mtk_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFI_CSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_nfc* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_nfc_nand_chip* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *nand, int chip)
{
	struct mtk_nfc *nfc = FUNC1(nand);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC4(nand);

	if (chip < 0)
		return;

	FUNC0(FUNC2(nand));

	FUNC3(nfc, mtk_nand->sels[chip], NFI_CSEL);
}