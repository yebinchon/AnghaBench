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
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int csreg; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC1 (struct nand_chip*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct mpc5121_nfc_prv *prv = FUNC1(chip);
	struct device_node *dn;

	dn = FUNC2(NULL, NULL, "fsl,mpc5121ads-cpld");
	if (dn) {
		prv->csreg = FUNC3(dn, 0);
		FUNC4(dn);
		if (!prv->csreg)
			return -ENOMEM;

		/* CPLD Register 9 controls NAND /CE Lines */
		prv->csreg += 9;
		return 0;
	}

	return -EINVAL;
}