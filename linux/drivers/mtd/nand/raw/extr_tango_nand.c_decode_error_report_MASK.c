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
typedef  int u32 ;
struct tango_nfc {scalar_t__ mem_base; scalar_t__ reg_base; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct TYPE_2__ {int /*<<< orphan*/  corrected; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int EBADMSG ; 
 scalar_t__ ERROR_REPORT ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ NFC_XFER_STATUS ; 
 int PAGE_IS_EMPTY ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 int FUNC6 (scalar_t__) ; 
 struct tango_nfc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *chip)
{
	u32 status, res;
	struct mtd_info *mtd = FUNC5(chip);
	struct tango_nfc *nfc = FUNC7(chip->controller);

	status = FUNC6(nfc->reg_base + NFC_XFER_STATUS);
	if (status & PAGE_IS_EMPTY)
		return 0;

	res = FUNC6(nfc->mem_base + ERROR_REPORT);

	if (FUNC0(res) || FUNC1(res))
		return -EBADMSG;

	/* ERR_COUNT_PKT_N is max, not sum, but that's all we have */
	mtd->ecc_stats.corrected +=
		FUNC2(res) + FUNC3(res);

	return FUNC4(FUNC2(res), FUNC3(res));
}