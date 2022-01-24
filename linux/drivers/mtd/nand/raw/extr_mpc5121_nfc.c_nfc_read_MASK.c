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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u16 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static inline u16 FUNC3(struct mtd_info *mtd, uint reg)
{
	struct nand_chip *chip = FUNC1(mtd);
	struct mpc5121_nfc_prv *prv = FUNC2(chip);

	return FUNC0(prv->regs + reg);
}