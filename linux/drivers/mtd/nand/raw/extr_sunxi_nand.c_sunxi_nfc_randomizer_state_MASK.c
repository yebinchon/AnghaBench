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
typedef  int /*<<< orphan*/  const u16 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int ecc_step_size; int /*<<< orphan*/  erasesize; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mtd_info*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  const* sunxi_nfc_randomizer_ecc1024_seeds ; 
 int /*<<< orphan*/  const* sunxi_nfc_randomizer_ecc512_seeds ; 
 int /*<<< orphan*/  const* sunxi_nfc_randomizer_page_seeds ; 

__attribute__((used)) static u16 FUNC3(struct nand_chip *nand, int page,
				      bool ecc)
{
	struct mtd_info *mtd = FUNC2(nand);
	const u16 *seeds = sunxi_nfc_randomizer_page_seeds;
	int mod = FUNC1(mtd->erasesize, mtd);

	if (mod > FUNC0(sunxi_nfc_randomizer_page_seeds))
		mod = FUNC0(sunxi_nfc_randomizer_page_seeds);

	if (ecc) {
		if (mtd->ecc_step_size == 512)
			seeds = sunxi_nfc_randomizer_ecc512_seeds;
		else
			seeds = sunxi_nfc_randomizer_ecc1024_seeds;
	}

	return seeds[page % mod];
}