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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  sector_size_1k; } ;
struct brcmnand_host {TYPE_1__ hwcfg; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {unsigned int max_oob; int /*<<< orphan*/  dev; int /*<<< orphan*/  soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PROGRAM_PAGE ; 
 int EIO ; 
 scalar_t__ FC_BYTES ; 
 unsigned int FC_SHIFT ; 
 unsigned int FC_WORDS ; 
 int NAND_STATUS_FAIL ; 
 scalar_t__ FUNC0 (struct brcmnand_host*,scalar_t__,int*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmnand_controller*,unsigned int,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,int const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int const*) ; 
 scalar_t__ FUNC11 (int const*) ; 
 scalar_t__ FUNC12 (struct brcmnand_controller*) ; 
 struct brcmnand_host* FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcmnand_controller*,unsigned int,int) ; 
 scalar_t__ FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct brcmnand_controller*,unsigned int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct mtd_info *mtd, struct nand_chip *chip,
			  u64 addr, const u32 *buf, u8 *oob)
{
	struct brcmnand_host *host = FUNC13(chip);
	struct brcmnand_controller *ctrl = host->ctrl;
	unsigned int i, j, trans = mtd->writesize >> FC_SHIFT;
	int status, ret = 0;

	FUNC8(ctrl->dev, "write %llx <- %p\n", (unsigned long long)addr, buf);

	if (FUNC15((unsigned long)buf & 0x03)) {
		FUNC10(ctrl->dev, "unaligned buffer: %p\n", buf);
		buf = (u32 *)((unsigned long)buf & ~0x03);
	}

	FUNC6(mtd, 0);

	for (i = 0; i < ctrl->max_oob; i += 4)
		FUNC14(ctrl, i, 0xffffffff);

	if (FUNC12(ctrl) && !oob && FUNC11(buf)) {
		if (FUNC0(host, addr, (u32 *)buf,
					mtd->writesize, CMD_PROGRAM_PAGE))
			ret = -EIO;
		goto out;
	}

	for (i = 0; i < trans; i++, addr += FC_BYTES) {
		/* full address MUST be set before populating FC */
		FUNC2(mtd, addr);

		if (buf) {
			FUNC3(ctrl->soc, false);

			for (j = 0; j < FC_WORDS; j++, buf++)
				FUNC7(ctrl, j, *buf);

			FUNC4(ctrl->soc, false);
		} else if (oob) {
			for (j = 0; j < FC_WORDS; j++)
				FUNC7(ctrl, j, 0xffffffff);
		}

		if (oob) {
			oob += FUNC16(ctrl, i, oob,
					mtd->oobsize / trans,
					host->hwcfg.sector_size_1k);
		}

		/* we cannot use SPARE_AREA_PROGRAM when PARTIAL_PAGE_EN=0 */
		FUNC1(host, CMD_PROGRAM_PAGE);
		status = FUNC5(chip);

		if (status & NAND_STATUS_FAIL) {
			FUNC9(ctrl->dev, "program failed at %llx\n",
				(unsigned long long)addr);
			ret = -EIO;
			goto out;
		}
	}
out:
	FUNC6(mtd, 1);
	return ret;
}