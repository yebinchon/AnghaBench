#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_ecc_stats {unsigned int corrected; } ;
struct denali_controller {int active_bank; scalar_t__ reg; } ;
struct TYPE_4__ {struct mtd_ecc_stats ecc_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ECC_COR_INFO__MAX_ERRORS ; 
 int FUNC1 (int) ; 
 int ECC_COR_INFO__UNCOR_ERR ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_2__* FUNC5 (struct nand_chip*) ; 
 struct denali_controller* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip,
			       unsigned long *uncor_ecc_flags)
{
	struct denali_controller *denali = FUNC6(chip);
	struct mtd_ecc_stats *ecc_stats = &FUNC5(chip)->ecc_stats;
	int bank = denali->active_bank;
	u32 ecc_cor;
	unsigned int max_bitflips;

	ecc_cor = FUNC4(denali->reg + FUNC0(bank));
	ecc_cor >>= FUNC1(bank);

	if (ecc_cor & ECC_COR_INFO__UNCOR_ERR) {
		/*
		 * This flag is set when uncorrectable error occurs at least in
		 * one ECC sector.  We can not know "how many sectors", or
		 * "which sector(s)".  We need erase-page check for all sectors.
		 */
		*uncor_ecc_flags = FUNC3(chip->ecc.steps - 1, 0);
		return 0;
	}

	max_bitflips = FUNC2(ECC_COR_INFO__MAX_ERRORS, ecc_cor);

	/*
	 * The register holds the maximum of per-sector corrected bitflips.
	 * This is suitable for the return value of the ->read_page() callback.
	 * Unfortunately, we can not know the total number of corrected bits in
	 * the page.  Increase the stats by max_bitflips. (compromised solution)
	 */
	ecc_stats->corrected += max_bitflips;

	return max_bitflips;
}