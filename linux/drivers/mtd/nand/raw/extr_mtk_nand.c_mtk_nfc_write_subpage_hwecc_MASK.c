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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int dummy; } ;
struct mtk_nfc {int /*<<< orphan*/  buffer; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 
 struct mtk_nfc* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, u32 offset,
				       u32 data_len, const u8 *buf,
				       int oob_on, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct mtk_nfc *nfc = FUNC2(chip);
	int ret;

	ret = FUNC0(mtd, offset, data_len, buf);
	if (ret < 0)
		return ret;

	/* use the data in the private buffer (now with FDM and CRC) */
	return FUNC1(mtd, chip, nfc->buffer, page, 1);
}