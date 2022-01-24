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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct meson_nfc_nand_chip {int /*<<< orphan*/  info_buf; int /*<<< orphan*/  data_buf; } ;

/* Variables and functions */
 int PER_INFO_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 struct meson_nfc_nand_chip* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *nand,
				      const u8 *buf, int oob_required, int page)
{
	struct mtd_info *mtd = FUNC4(nand);
	struct meson_nfc_nand_chip *meson_chip = FUNC5(nand);
	u8 *oob_buf = nand->oob_poi;

	FUNC0(meson_chip->data_buf, buf, mtd->writesize);
	FUNC1(meson_chip->info_buf, 0, nand->ecc.steps * PER_INFO_BYTE);
	FUNC2(nand, oob_buf);

	return FUNC3(nand, page, 0);
}