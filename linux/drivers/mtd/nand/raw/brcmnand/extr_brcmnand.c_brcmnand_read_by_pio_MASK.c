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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int dummy; } ;
struct mtd_info {unsigned int oobsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  sector_size_1k; } ;
struct brcmnand_host {TYPE_1__ hwcfg; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int /*<<< orphan*/  soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PAGE_READ ; 
 int EBADMSG ; 
 int EUCLEAN ; 
 scalar_t__ FC_BYTES ; 
 int FC_WORDS ; 
 int /*<<< orphan*/  FUNC0 (struct brcmnand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmnand_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmnand_controller*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmnand_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 struct brcmnand_host* FUNC10 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmnand_controller*,int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd, struct nand_chip *chip,
				u64 addr, unsigned int trans, u32 *buf,
				u8 *oob, u64 *err_addr)
{
	struct brcmnand_host *host = FUNC10(chip);
	struct brcmnand_controller *ctrl = host->ctrl;
	int i, j, ret = 0;

	FUNC0(ctrl);

	for (i = 0; i < trans; i++, addr += FC_BYTES) {
		FUNC5(mtd, addr);
		/* SPARE_AREA_READ does not use ECC, so just use PAGE_READ */
		FUNC4(host, CMD_PAGE_READ);
		FUNC8(chip);

		if (FUNC9(buf)) {
			FUNC6(ctrl->soc, false);

			for (j = 0; j < FC_WORDS; j++, buf++)
				*buf = FUNC3(ctrl, j);

			FUNC7(ctrl->soc, false);
		}

		if (oob)
			oob += FUNC11(ctrl, i, oob,
					mtd->oobsize / trans,
					host->hwcfg.sector_size_1k);

		if (!ret) {
			*err_addr = FUNC2(ctrl);

			if (*err_addr)
				ret = -EBADMSG;
		}

		if (!ret) {
			*err_addr = FUNC1(ctrl);

			if (*err_addr)
				ret = -EUCLEAN;
		}
	}

	return ret;
}