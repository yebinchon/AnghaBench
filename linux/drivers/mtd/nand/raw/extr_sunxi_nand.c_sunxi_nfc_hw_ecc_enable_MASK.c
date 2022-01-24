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
typedef  int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct sunxi_nand_hw_ecc {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int size; struct sunxi_nand_hw_ecc* priv; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int NFC_ECC_BLOCK_512 ; 
 int NFC_ECC_BLOCK_SIZE_MSK ; 
 int NFC_ECC_EN ; 
 int NFC_ECC_EXCEPTION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NFC_ECC_MODE_MSK ; 
 int NFC_ECC_PIPELINE ; 
 scalar_t__ NFC_REG_ECC_CTL ; 
 int FUNC1 (scalar_t__) ; 
 struct sunxi_nfc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *nand)
{
	struct sunxi_nfc *nfc = FUNC2(nand->controller);
	struct sunxi_nand_hw_ecc *data = nand->ecc.priv;
	u32 ecc_ctl;

	ecc_ctl = FUNC1(nfc->regs + NFC_REG_ECC_CTL);
	ecc_ctl &= ~(NFC_ECC_MODE_MSK | NFC_ECC_PIPELINE |
		     NFC_ECC_BLOCK_SIZE_MSK);
	ecc_ctl |= NFC_ECC_EN | FUNC0(data->mode) | NFC_ECC_EXCEPTION |
		   NFC_ECC_PIPELINE;

	if (nand->ecc.size == 512)
		ecc_ctl |= NFC_ECC_BLOCK_512;

	FUNC3(ecc_ctl, nfc->regs + NFC_REG_ECC_CTL);
}