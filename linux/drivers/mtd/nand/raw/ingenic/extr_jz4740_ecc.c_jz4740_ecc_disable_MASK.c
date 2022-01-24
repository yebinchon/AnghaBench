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
typedef  int /*<<< orphan*/  u32 ;
struct ingenic_ecc {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_NAND_ECC_CTRL_ENABLE ; 
 scalar_t__ JZ_REG_NAND_ECC_CTRL ; 
 scalar_t__ JZ_REG_NAND_IRQ_STAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ingenic_ecc *ecc)
{
	u32 reg;

	FUNC1(0, ecc->base + JZ_REG_NAND_IRQ_STAT);
	reg = FUNC0(ecc->base + JZ_REG_NAND_ECC_CTRL);
	reg &= ~JZ_NAND_ECC_CTRL_ENABLE;
	FUNC1(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);
}