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
struct intel_spi {int nregions; int pr_num; scalar_t__ swseq_erase; int /*<<< orphan*/  dev; scalar_t__ swseq_reg; scalar_t__ base; scalar_t__ pregs; TYPE_1__* info; scalar_t__ sregs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BFPREG ; 
 scalar_t__ BYT_BCR ; 
 scalar_t__ DLOCK ; 
 scalar_t__ FADDR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FRACC ; 
 scalar_t__ FUNC1 (int) ; 
 int FREG_BASE_MASK ; 
 int FREG_LIMIT_MASK ; 
 int FREG_LIMIT_SHIFT ; 
 scalar_t__ HSFSTS_CTL ; 
 int HSFSTS_CTL_FLOCKDN ; 
 scalar_t__ INTEL_SPI_BYT ; 
 scalar_t__ LVSCC ; 
 scalar_t__ OPMENU0 ; 
 scalar_t__ OPMENU1 ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ PREOP_OPTYPE ; 
 int PR_BASE_MASK ; 
 int PR_LIMIT_MASK ; 
 int PR_LIMIT_SHIFT ; 
 int PR_RPE ; 
 int PR_WPE ; 
 scalar_t__ SSFSTS_CTL ; 
 scalar_t__ UVSCC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct intel_spi *ispi)
{
	u32 value;
	int i;

	FUNC3(ispi->dev, "BFPREG=0x%08x\n", FUNC4(ispi->base + BFPREG));

	value = FUNC4(ispi->base + HSFSTS_CTL);
	FUNC3(ispi->dev, "HSFSTS_CTL=0x%08x\n", value);
	if (value & HSFSTS_CTL_FLOCKDN)
		FUNC3(ispi->dev, "-> Locked\n");

	FUNC3(ispi->dev, "FADDR=0x%08x\n", FUNC4(ispi->base + FADDR));
	FUNC3(ispi->dev, "DLOCK=0x%08x\n", FUNC4(ispi->base + DLOCK));

	for (i = 0; i < 16; i++)
		FUNC3(ispi->dev, "FDATA(%d)=0x%08x\n",
			i, FUNC4(ispi->base + FUNC0(i)));

	FUNC3(ispi->dev, "FRACC=0x%08x\n", FUNC4(ispi->base + FRACC));

	for (i = 0; i < ispi->nregions; i++)
		FUNC3(ispi->dev, "FREG(%d)=0x%08x\n", i,
			FUNC4(ispi->base + FUNC1(i)));
	for (i = 0; i < ispi->pr_num; i++)
		FUNC3(ispi->dev, "PR(%d)=0x%08x\n", i,
			FUNC4(ispi->pregs + FUNC2(i)));

	value = FUNC4(ispi->sregs + SSFSTS_CTL);
	FUNC3(ispi->dev, "SSFSTS_CTL=0x%08x\n", value);
	FUNC3(ispi->dev, "PREOP_OPTYPE=0x%08x\n",
		FUNC4(ispi->sregs + PREOP_OPTYPE));
	FUNC3(ispi->dev, "OPMENU0=0x%08x\n", FUNC4(ispi->sregs + OPMENU0));
	FUNC3(ispi->dev, "OPMENU1=0x%08x\n", FUNC4(ispi->sregs + OPMENU1));

	if (ispi->info->type == INTEL_SPI_BYT)
		FUNC3(ispi->dev, "BCR=0x%08x\n", FUNC4(ispi->base + BYT_BCR));

	FUNC3(ispi->dev, "LVSCC=0x%08x\n", FUNC4(ispi->base + LVSCC));
	FUNC3(ispi->dev, "UVSCC=0x%08x\n", FUNC4(ispi->base + UVSCC));

	FUNC3(ispi->dev, "Protected regions:\n");
	for (i = 0; i < ispi->pr_num; i++) {
		u32 base, limit;

		value = FUNC4(ispi->pregs + FUNC2(i));
		if (!(value & (PR_WPE | PR_RPE)))
			continue;

		limit = (value & PR_LIMIT_MASK) >> PR_LIMIT_SHIFT;
		base = value & PR_BASE_MASK;

		FUNC3(ispi->dev, " %02d base: 0x%08x limit: 0x%08x [%c%c]\n",
			 i, base << 12, (limit << 12) | 0xfff,
			 value & PR_WPE ? 'W' : '.',
			 value & PR_RPE ? 'R' : '.');
	}

	FUNC3(ispi->dev, "Flash regions:\n");
	for (i = 0; i < ispi->nregions; i++) {
		u32 region, base, limit;

		region = FUNC4(ispi->base + FUNC1(i));
		base = region & FREG_BASE_MASK;
		limit = (region & FREG_LIMIT_MASK) >> FREG_LIMIT_SHIFT;

		if (base >= limit || (i > 0 && limit == 0))
			FUNC3(ispi->dev, " %02d disabled\n", i);
		else
			FUNC3(ispi->dev, " %02d base: 0x%08x limit: 0x%08x\n",
				 i, base << 12, (limit << 12) | 0xfff);
	}

	FUNC3(ispi->dev, "Using %cW sequencer for register access\n",
		ispi->swseq_reg ? 'S' : 'H');
	FUNC3(ispi->dev, "Using %cW sequencer for erase operation\n",
		ispi->swseq_erase ? 'S' : 'H');
}