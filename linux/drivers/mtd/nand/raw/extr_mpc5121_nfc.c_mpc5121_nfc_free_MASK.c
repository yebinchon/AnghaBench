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
struct mpc5121_nfc_prv {scalar_t__ csreg; scalar_t__ clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct nand_chip* FUNC2 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC2(mtd);
	struct mpc5121_nfc_prv *prv = FUNC3(chip);

	if (prv->clk)
		FUNC0(prv->clk);

	if (prv->csreg)
		FUNC1(prv->csreg);
}