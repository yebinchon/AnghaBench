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
struct TYPE_2__ {size_t erasesize; } ;
struct spi_nor {int /*<<< orphan*/  erase_opcode; struct intel_spi* priv; TYPE_1__ mtd; } ;
struct intel_spi {scalar_t__ base; scalar_t__ atomic_preopcode; scalar_t__ swseq_erase; scalar_t__ erase_64k; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 scalar_t__ FADDR ; 
 scalar_t__ HSFSTS_CTL ; 
 int HSFSTS_CTL_AEL ; 
 int HSFSTS_CTL_FCERR ; 
 int HSFSTS_CTL_FCYCLE_ERASE ; 
 int HSFSTS_CTL_FCYCLE_ERASE_64K ; 
 int HSFSTS_CTL_FCYCLE_MASK ; 
 int HSFSTS_CTL_FDBC_MASK ; 
 int HSFSTS_CTL_FDONE ; 
 int HSFSTS_CTL_FGO ; 
 int /*<<< orphan*/  OPTYPE_WRITE_WITH_ADDR ; 
 size_t SZ_4K ; 
 size_t SZ_64K ; 
 int FUNC0 (struct intel_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_spi*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, loff_t offs)
{
	size_t erase_size, len = nor->mtd.erasesize;
	struct intel_spi *ispi = nor->priv;
	u32 val, status, cmd;
	int ret;

	/* If the hardware can do 64k erase use that when possible */
	if (len >= SZ_64K && ispi->erase_64k) {
		cmd = HSFSTS_CTL_FCYCLE_ERASE_64K;
		erase_size = SZ_64K;
	} else {
		cmd = HSFSTS_CTL_FCYCLE_ERASE;
		erase_size = SZ_4K;
	}

	if (ispi->swseq_erase) {
		while (len > 0) {
			FUNC3(offs, ispi->base + FADDR);

			ret = FUNC0(ispi, nor->erase_opcode,
						 0, OPTYPE_WRITE_WITH_ADDR);
			if (ret)
				return ret;

			offs += erase_size;
			len -= erase_size;
		}

		return 0;
	}

	/* Not needed with HW sequencer erase, make sure it is cleared */
	ispi->atomic_preopcode = 0;

	while (len > 0) {
		FUNC3(offs, ispi->base + FADDR);

		val = FUNC2(ispi->base + HSFSTS_CTL);
		val &= ~(HSFSTS_CTL_FDBC_MASK | HSFSTS_CTL_FCYCLE_MASK);
		val |= HSFSTS_CTL_AEL | HSFSTS_CTL_FCERR | HSFSTS_CTL_FDONE;
		val |= cmd;
		val |= HSFSTS_CTL_FGO;
		FUNC3(val, ispi->base + HSFSTS_CTL);

		ret = FUNC1(ispi);
		if (ret)
			return ret;

		status = FUNC2(ispi->base + HSFSTS_CTL);
		if (status & HSFSTS_CTL_FCERR)
			return -EIO;
		else if (status & HSFSTS_CTL_AEL)
			return -EACCES;

		offs += erase_size;
		len -= erase_size;
	}

	return 0;
}