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
typedef  int /*<<< orphan*/  u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_ecc_ctrl {int size; int bytes; int /*<<< orphan*/  strength; } ;
struct nand_chip {int options; struct nand_ecc_ctrl ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int NAND_NEED_SCRAMBLING ; 
 int /*<<< orphan*/  NFC_CMD_INT_FLAG ; 
 int NFC_DATA_SWAP_METHOD ; 
 int NFC_DATA_TRANS ; 
 int NFC_ECC_OP ; 
 scalar_t__ NFC_RAM0_BASE ; 
 scalar_t__ NFC_REG_CMD ; 
 scalar_t__ NFC_REG_ECC_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC10 (struct sunxi_nfc*) ; 
 int FUNC11 (struct sunxi_nfc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sunxi_nfc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct nand_chip *nand,
				       u8 *data, int data_off,
				       u8 *oob, int oob_off,
				       int *cur_off,
				       unsigned int *max_bitflips,
				       bool bbm, bool oob_required, int page)
{
	struct sunxi_nfc *nfc = FUNC12(nand->controller);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	int raw_mode = 0;
	bool erased;
	int ret;

	if (*cur_off != data_off)
		FUNC1(nand, data_off, NULL, 0, false);

	FUNC9(nand, NULL, ecc->size, false, page);

	if (data_off + ecc->size != oob_off)
		FUNC1(nand, oob_off, NULL, 0, false);

	ret = FUNC10(nfc);
	if (ret)
		return ret;

	FUNC8(nand);
	FUNC13(NFC_DATA_TRANS | NFC_DATA_SWAP_METHOD | NFC_ECC_OP,
	       nfc->regs + NFC_REG_CMD);

	ret = FUNC11(nfc, NFC_CMD_INT_FLAG, false, 0);
	FUNC7(nand);
	if (ret)
		return ret;

	*cur_off = oob_off + ecc->bytes + 4;

	ret = FUNC4(nand, data, oob_required ? oob : NULL, 0,
				       FUNC3(nfc->regs + NFC_REG_ECC_ST),
				       &erased);
	if (erased)
		return 1;

	if (ret < 0) {
		/*
		 * Re-read the data with the randomizer disabled to identify
		 * bitflips in erased pages.
		 */
		if (nand->options & NAND_NEED_SCRAMBLING)
			FUNC1(nand, data_off, data,
						   ecc->size, false);
		else
			FUNC0(data, nfc->regs + NFC_RAM0_BASE,
				      ecc->size);

		FUNC1(nand, oob_off, oob, ecc->bytes + 4,
					   false);

		ret = FUNC2(data,	ecc->size,
						  oob, ecc->bytes + 4,
						  NULL, 0, ecc->strength);
		if (ret >= 0)
			raw_mode = 1;
	} else {
		FUNC0(data, nfc->regs + NFC_RAM0_BASE, ecc->size);

		if (oob_required) {
			FUNC1(nand, oob_off, NULL, 0,
						   false);
			FUNC9(nand, oob, ecc->bytes + 4,
						      true, page);

			FUNC5(nand, oob, 0,
							    bbm, page);
		}
	}

	FUNC6(nand, max_bitflips, ret);

	return raw_mode;
}