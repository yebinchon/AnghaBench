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
typedef  scalar_t__ uint32_t ;
typedef  int u32 ;
struct spi_nor {int flags; int /*<<< orphan*/  dev; } ;
struct mtd_info {int erasesize; int size; } ;
struct erase_info {int addr; int len; } ;

/* Variables and functions */
 unsigned long CHIP_ERASE_2MB_READY_WAIT_JIFFIES ; 
 int EINVAL ; 
 int EIO ; 
 int SNOR_F_NO_OP_CHIP_ERASE ; 
 int /*<<< orphan*/  SPI_NOR_OPS_ERASE ; 
 int SZ_2M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long long,long long) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct spi_nor*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 struct spi_nor* FUNC4 (struct mtd_info*) ; 
 int FUNC5 (struct spi_nor*,int,int) ; 
 int FUNC6 (struct spi_nor*,int) ; 
 scalar_t__ FUNC7 (struct spi_nor*) ; 
 int FUNC8 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct spi_nor*) ; 
 int FUNC11 (struct spi_nor*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC14(struct mtd_info *mtd, struct erase_info *instr)
{
	struct spi_nor *nor = FUNC4(mtd);
	u32 addr, len;
	uint32_t rem;
	int ret;

	FUNC0(nor->dev, "at 0x%llx, len %lld\n", (long long)instr->addr,
			(long long)instr->len);

	if (FUNC7(nor)) {
		FUNC1(instr->len, mtd->erasesize, &rem);
		if (rem)
			return -EINVAL;
	}

	addr = instr->addr;
	len = instr->len;

	ret = FUNC8(nor, SPI_NOR_OPS_ERASE);
	if (ret)
		return ret;

	/* whole-chip erase? */
	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
		unsigned long timeout;

		FUNC13(nor);

		if (FUNC2(nor)) {
			ret = -EIO;
			goto erase_err;
		}

		/*
		 * Scale the timeout linearly with the size of the flash, with
		 * a minimum calibrated to an old 2MB flash. We could try to
		 * pull these from CFI/SFDP, but these values should be good
		 * enough for now.
		 */
		timeout = FUNC3(CHIP_ERASE_2MB_READY_WAIT_JIFFIES,
			      CHIP_ERASE_2MB_READY_WAIT_JIFFIES *
			      (unsigned long)(mtd->size / SZ_2M));
		ret = FUNC11(nor, timeout);
		if (ret)
			goto erase_err;

	/* REVISIT in some cases we could speed up erasing large regions
	 * by using SPINOR_OP_SE instead of SPINOR_OP_BE_4K.  We may have set up
	 * to use "small sector erase", but that's not always optimal.
	 */

	/* "sector"-at-a-time erase */
	} else if (FUNC7(nor)) {
		while (len) {
			FUNC13(nor);

			ret = FUNC6(nor, addr);
			if (ret)
				goto erase_err;

			addr += mtd->erasesize;
			len -= mtd->erasesize;

			ret = FUNC10(nor);
			if (ret)
				goto erase_err;
		}

	/* erase multiple sectors */
	} else {
		ret = FUNC5(nor, addr, len);
		if (ret)
			goto erase_err;
	}

	FUNC12(nor);

erase_err:
	FUNC9(nor, SPI_NOR_OPS_ERASE);

	return ret;
}