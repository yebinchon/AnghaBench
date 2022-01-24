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
struct mtk_nfc_fdm {int reg_size; } ;
struct mtk_nfc_nand_chip {struct mtk_nfc_fdm fdm; } ;
struct mtk_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mtk_nfc* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (struct nand_chip*,int) ; 
 struct mtk_nfc_nand_chip* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static inline void FUNC6(struct nand_chip *chip, u32 start,
				    u32 sectors)
{
	struct mtk_nfc *nfc = FUNC2(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC5(chip);
	struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
	u32 vall, valm;
	u8 *oobptr;
	int i, j;

	for (i = 0; i < sectors; i++) {
		oobptr = FUNC4(chip, start + i);
		vall = FUNC3(nfc, FUNC0(i));
		valm = FUNC3(nfc, FUNC1(i));

		for (j = 0; j < fdm->reg_size; j++)
			oobptr[j] = (j >= 4 ? valm : vall) >> ((j % 4) * 8);
	}
}