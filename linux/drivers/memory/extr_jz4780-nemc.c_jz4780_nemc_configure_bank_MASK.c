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
typedef  int uint32_t ;
typedef  int u8 ;
struct jz4780_nemc {scalar_t__ base; int /*<<< orphan*/  dev; TYPE_1__* soc_info; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int tas_tah_cycles_max; } ;

/* Variables and functions */
 int NEMC_SMCR_BW_8 ; 
 int NEMC_SMCR_BW_MASK ; 
 int NEMC_SMCR_SMT ; 
 int NEMC_SMCR_TAH_MASK ; 
 int NEMC_SMCR_TAH_SHIFT ; 
 int NEMC_SMCR_TAS_MASK ; 
 int NEMC_SMCR_TAS_SHIFT ; 
 int NEMC_SMCR_TAW_MASK ; 
 int const NEMC_SMCR_TAW_SHIFT ; 
 int NEMC_SMCR_TBP_MASK ; 
 int const NEMC_SMCR_TBP_SHIFT ; 
 int NEMC_SMCR_TSTRV_MASK ; 
 int NEMC_SMCR_TSTRV_SHIFT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct jz4780_nemc*,int) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,int*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static bool FUNC6(struct jz4780_nemc *nemc,
				       unsigned int bank,
				       struct device_node *node)
{
	uint32_t smcr, val, cycles;

	/*
	 * Conversion of tBP and tAW cycle counts to values supported by the
	 * hardware (round up to the next supported value).
	 */
	static const u8 convert_tBP_tAW[] = {
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,

		/* 11 - 12 -> 12 cycles */
		11, 11,

		/* 13 - 15 -> 15 cycles */
		12, 12, 12,

		/* 16 - 20 -> 20 cycles */
		13, 13, 13, 13, 13,

		/* 21 - 25 -> 25 cycles */
		14, 14, 14, 14, 14,

		/* 26 - 31 -> 31 cycles */
		15, 15, 15, 15, 15, 15
	};

	smcr = FUNC4(nemc->base + FUNC0(bank));
	smcr &= ~NEMC_SMCR_SMT;

	if (!FUNC3(node, "ingenic,nemc-bus-width", &val)) {
		smcr &= ~NEMC_SMCR_BW_MASK;
		switch (val) {
		case 8:
			smcr |= NEMC_SMCR_BW_8;
			break;
		default:
			/*
			 * Earlier SoCs support a 16 bit bus width (the 4780
			 * does not), until those are properly supported, error.
			 */
			FUNC1(nemc->dev, "unsupported bus width: %u\n", val);
			return false;
		}
	}

	if (FUNC3(node, "ingenic,nemc-tAS", &val) == 0) {
		smcr &= ~NEMC_SMCR_TAS_MASK;
		cycles = FUNC2(nemc, val);
		if (cycles > nemc->soc_info->tas_tah_cycles_max) {
			FUNC1(nemc->dev, "tAS %u is too high (%u cycles)\n",
				val, cycles);
			return false;
		}

		smcr |= cycles << NEMC_SMCR_TAS_SHIFT;
	}

	if (FUNC3(node, "ingenic,nemc-tAH", &val) == 0) {
		smcr &= ~NEMC_SMCR_TAH_MASK;
		cycles = FUNC2(nemc, val);
		if (cycles > nemc->soc_info->tas_tah_cycles_max) {
			FUNC1(nemc->dev, "tAH %u is too high (%u cycles)\n",
				val, cycles);
			return false;
		}

		smcr |= cycles << NEMC_SMCR_TAH_SHIFT;
	}

	if (FUNC3(node, "ingenic,nemc-tBP", &val) == 0) {
		smcr &= ~NEMC_SMCR_TBP_MASK;
		cycles = FUNC2(nemc, val);
		if (cycles > 31) {
			FUNC1(nemc->dev, "tBP %u is too high (%u cycles)\n",
				val, cycles);
			return false;
		}

		smcr |= convert_tBP_tAW[cycles] << NEMC_SMCR_TBP_SHIFT;
	}

	if (FUNC3(node, "ingenic,nemc-tAW", &val) == 0) {
		smcr &= ~NEMC_SMCR_TAW_MASK;
		cycles = FUNC2(nemc, val);
		if (cycles > 31) {
			FUNC1(nemc->dev, "tAW %u is too high (%u cycles)\n",
				val, cycles);
			return false;
		}

		smcr |= convert_tBP_tAW[cycles] << NEMC_SMCR_TAW_SHIFT;
	}

	if (FUNC3(node, "ingenic,nemc-tSTRV", &val) == 0) {
		smcr &= ~NEMC_SMCR_TSTRV_MASK;
		cycles = FUNC2(nemc, val);
		if (cycles > 63) {
			FUNC1(nemc->dev, "tSTRV %u is too high (%u cycles)\n",
				val, cycles);
			return false;
		}

		smcr |= cycles << NEMC_SMCR_TSTRV_SHIFT;
	}

	FUNC5(smcr, nemc->base + FUNC0(bank));
	return true;
}