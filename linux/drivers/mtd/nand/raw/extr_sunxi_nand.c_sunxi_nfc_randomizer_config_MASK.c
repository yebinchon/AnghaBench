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
typedef  int /*<<< orphan*/  u16 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int NAND_NEED_SCRAMBLING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NFC_RANDOM_SEED_MSK ; 
 scalar_t__ NFC_REG_ECC_CTL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int) ; 
 struct sunxi_nfc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *nand, int page,
					bool ecc)
{
	struct sunxi_nfc *nfc = FUNC3(nand->controller);
	u32 ecc_ctl = FUNC1(nfc->regs + NFC_REG_ECC_CTL);
	u16 state;

	if (!(nand->options & NAND_NEED_SCRAMBLING))
		return;

	ecc_ctl = FUNC1(nfc->regs + NFC_REG_ECC_CTL);
	state = FUNC2(nand, page, ecc);
	ecc_ctl = FUNC1(nfc->regs + NFC_REG_ECC_CTL) & ~NFC_RANDOM_SEED_MSK;
	FUNC4(ecc_ctl | FUNC0(state), nfc->regs + NFC_REG_ECC_CTL);
}