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
typedef  int u32 ;
struct vf610_nfc {scalar_t__ variant; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NFC_ROW_ADDR ; 
 scalar_t__ NFC_VFC610 ; 
 int ROW_ADDR_CHIP_SEL_MASK ; 
 int ROW_ADDR_CHIP_SEL_RB_MASK ; 
 int ROW_ADDR_CHIP_SEL_RB_SHIFT ; 
 int ROW_ADDR_CHIP_SEL_SHIFT ; 
 struct vf610_nfc* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct vf610_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vf610_nfc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, unsigned int cs)
{
	struct vf610_nfc *nfc = FUNC1(chip);
	u32 tmp;

	/* Vybrid only (MPC5125 would have full RB and four CS) */
	if (nfc->variant != NFC_VFC610)
		return;

	tmp = FUNC2(nfc, NFC_ROW_ADDR);
	tmp &= ~(ROW_ADDR_CHIP_SEL_RB_MASK | ROW_ADDR_CHIP_SEL_MASK);
	tmp |= 1 << ROW_ADDR_CHIP_SEL_RB_SHIFT;
	tmp |= FUNC0(cs) << ROW_ADDR_CHIP_SEL_SHIFT;

	FUNC3(nfc, NFC_ROW_ADDR, tmp);
}