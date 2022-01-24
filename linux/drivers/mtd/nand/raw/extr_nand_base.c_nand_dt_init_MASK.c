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
struct TYPE_2__ {int mode; int algo; int strength; int size; int /*<<< orphan*/  options; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  bbt_options; int /*<<< orphan*/  options; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BBT_USE_FLASH ; 
 int /*<<< orphan*/  NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  NAND_ECC_MAXIMIZE ; 
 int /*<<< orphan*/  NAND_IS_BOOT_MEDIUM ; 
 struct device_node* FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*) ; 
 int FUNC5 (struct device_node*) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *chip)
{
	struct device_node *dn = FUNC0(chip);
	int ecc_mode, ecc_algo, ecc_strength, ecc_step;

	if (!dn)
		return 0;

	if (FUNC1(dn) == 16)
		chip->options |= NAND_BUSWIDTH_16;

	if (FUNC7(dn, "nand-is-boot-medium"))
		chip->options |= NAND_IS_BOOT_MEDIUM;

	if (FUNC6(dn))
		chip->bbt_options |= NAND_BBT_USE_FLASH;

	ecc_mode = FUNC3(dn);
	ecc_algo = FUNC2(dn);
	ecc_strength = FUNC5(dn);
	ecc_step = FUNC4(dn);

	if (ecc_mode >= 0)
		chip->ecc.mode = ecc_mode;

	if (ecc_algo >= 0)
		chip->ecc.algo = ecc_algo;

	if (ecc_strength >= 0)
		chip->ecc.strength = ecc_strength;

	if (ecc_step > 0)
		chip->ecc.size = ecc_step;

	if (FUNC7(dn, "nand-ecc-maximize"))
		chip->ecc.options |= NAND_ECC_MAXIMIZE;

	return 0;
}