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
struct sunxi_nfc {int /*<<< orphan*/  dmac; scalar_t__ regs; } ;
struct scatterlist {int dummy; } ;
struct nand_ecc_ctrl {int steps; int bytes; int /*<<< orphan*/  size; } ;
struct nand_chip {int options; int /*<<< orphan*/ * oob_poi; int /*<<< orphan*/  cur_cs; struct nand_ecc_ctrl ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_RNDIN ; 
 int NAND_NEED_SCRAMBLING ; 
 int NFC_ACCESS_DIR ; 
 int /*<<< orphan*/  NFC_CMD_INT_FLAG ; 
 int NFC_DATA_SWAP_METHOD ; 
 int NFC_DATA_TRANS ; 
 int NFC_PAGE_OP ; 
 scalar_t__ NFC_REG_CMD ; 
 scalar_t__ NFC_REG_WCMD_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct sunxi_nfc*,int /*<<< orphan*/ ,struct scatterlist*) ; 
 int FUNC5 (struct sunxi_nfc*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct nand_chip*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sunxi_nfc*) ; 
 int FUNC16 (struct sunxi_nfc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sunxi_nfc* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct nand_chip *nand,
					   const u8 *buf,
					   int oob_required,
					   int page)
{
	struct sunxi_nfc *nfc = FUNC17(nand->controller);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	struct scatterlist sg;
	int ret, i;

	FUNC14(nand, nand->cur_cs);

	ret = FUNC15(nfc);
	if (ret)
		return ret;

	ret = FUNC5(nfc, buf, ecc->size, ecc->steps,
				       DMA_TO_DEVICE, &sg);
	if (ret)
		goto pio_fallback;

	for (i = 0; i < ecc->steps; i++) {
		const u8 *oob = nand->oob_poi + (i * (ecc->bytes + 4));

		FUNC8(nand, oob, i, !i, page);
	}

	FUNC2(nand, page, 0, NULL, 0);

	FUNC7(nand);
	FUNC11(nand, page, false);
	FUNC13(nand);

	FUNC18((NAND_CMD_RNDIN << 8) | NAND_CMD_PAGEPROG,
	       nfc->regs + NFC_REG_WCMD_SET);

	FUNC0(nfc->dmac);

	FUNC18(NFC_PAGE_OP | NFC_DATA_SWAP_METHOD |
	       NFC_DATA_TRANS | NFC_ACCESS_DIR,
	       nfc->regs + NFC_REG_CMD);

	ret = FUNC16(nfc, NFC_CMD_INT_FLAG, false, 0);
	if (ret)
		FUNC1(nfc->dmac);

	FUNC12(nand);
	FUNC6(nand);

	FUNC4(nfc, DMA_TO_DEVICE, &sg);

	if (ret)
		return ret;

	if (oob_required || (nand->options & NAND_NEED_SCRAMBLING))
		/* TODO: use DMA to transfer extra OOB bytes ? */
		FUNC9(nand, nand->oob_poi,
						 NULL, page);

	return FUNC3(nand);

pio_fallback:
	return FUNC10(nand, buf, oob_required, page);
}