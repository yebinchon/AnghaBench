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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sunxi_nfc {scalar_t__ regs; int /*<<< orphan*/  dmac; } ;
struct scatterlist {int dummy; } ;
struct nand_ecc_ctrl {int size; int bytes; int /*<<< orphan*/  strength; } ;
struct nand_chip {int options; int /*<<< orphan*/ * oob_poi; struct nand_ecc_ctrl ecc; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int NAND_CMD_READSTART ; 
 int NAND_CMD_RNDOUT ; 
 int NAND_CMD_RNDOUTSTART ; 
 int NAND_NEED_SCRAMBLING ; 
 int /*<<< orphan*/  NFC_CMD_INT_FLAG ; 
 int NFC_DATA_SWAP_METHOD ; 
 int NFC_DATA_TRANS ; 
 int FUNC0 (int) ; 
 int NFC_ECC_ERR_MSK ; 
 int NFC_PAGE_OP ; 
 scalar_t__ NFC_REG_CMD ; 
 scalar_t__ NFC_REG_ECC_ST ; 
 scalar_t__ NFC_REG_RCMD_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sunxi_nfc*,int /*<<< orphan*/ ,struct scatterlist*) ; 
 int FUNC8 (struct sunxi_nfc*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct scatterlist*) ; 
 int FUNC9 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nand_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC17 (struct nand_chip*) ; 
 int FUNC18 (struct sunxi_nfc*) ; 
 int FUNC19 (struct sunxi_nfc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sunxi_nfc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC22(struct nand_chip *nand, uint8_t *buf,
					    int oob_required, int page,
					    int nchunks)
{
	bool randomized = nand->options & NAND_NEED_SCRAMBLING;
	struct sunxi_nfc *nfc = FUNC20(nand->controller);
	struct mtd_info *mtd = FUNC5(nand);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	unsigned int max_bitflips = 0;
	int ret, i, raw_mode = 0;
	struct scatterlist sg;
	u32 status;

	ret = FUNC18(nfc);
	if (ret)
		return ret;

	ret = FUNC8(nfc, buf, ecc->size, nchunks,
				       DMA_FROM_DEVICE, &sg);
	if (ret)
		return ret;

	FUNC11(nand);
	FUNC15(nand, page, false);
	FUNC17(nand);

	FUNC21((NAND_CMD_RNDOUTSTART << 16) | (NAND_CMD_RNDOUT << 8) |
	       NAND_CMD_READSTART, nfc->regs + NFC_REG_RCMD_SET);

	FUNC1(nfc->dmac);

	FUNC21(NFC_PAGE_OP | NFC_DATA_SWAP_METHOD | NFC_DATA_TRANS,
	       nfc->regs + NFC_REG_CMD);

	ret = FUNC19(nfc, NFC_CMD_INT_FLAG, false, 0);
	if (ret)
		FUNC2(nfc->dmac);

	FUNC16(nand);
	FUNC10(nand);

	FUNC7(nfc, DMA_FROM_DEVICE, &sg);

	if (ret)
		return ret;

	status = FUNC6(nfc->regs + NFC_REG_ECC_ST);

	for (i = 0; i < nchunks; i++) {
		int data_off = i * ecc->size;
		int oob_off = i * (ecc->bytes + 4);
		u8 *data = buf + data_off;
		u8 *oob = nand->oob_poi + oob_off;
		bool erased;

		ret = FUNC9(nand, randomized ? data : NULL,
					       oob_required ? oob : NULL,
					       i, status, &erased);

		/* ECC errors are handled in the second loop. */
		if (ret < 0)
			continue;

		if (oob_required && !erased) {
			/* TODO: use DMA to retrieve OOB */
			FUNC3(nand,
						   mtd->writesize + oob_off,
						   oob, ecc->bytes + 4, false);

			FUNC12(nand, oob, i,
							    !i, page);
		}

		if (erased)
			raw_mode = 1;

		FUNC14(nand, &max_bitflips, ret);
	}

	if (status & NFC_ECC_ERR_MSK) {
		for (i = 0; i < nchunks; i++) {
			int data_off = i * ecc->size;
			int oob_off = i * (ecc->bytes + 4);
			u8 *data = buf + data_off;
			u8 *oob = nand->oob_poi + oob_off;

			if (!(status & FUNC0(i)))
				continue;

			/*
			 * Re-read the data with the randomizer disabled to
			 * identify bitflips in erased pages.
			 * TODO: use DMA to read page in raw mode
			 */
			if (randomized)
				FUNC3(nand, data_off,
							   data, ecc->size,
							   false);

			/* TODO: use DMA to retrieve OOB */
			FUNC3(nand,
						   mtd->writesize + oob_off,
						   oob, ecc->bytes + 4, false);

			ret = FUNC4(data,	ecc->size,
							  oob, ecc->bytes + 4,
							  NULL, 0,
							  ecc->strength);
			if (ret >= 0)
				raw_mode = 1;

			FUNC14(nand, &max_bitflips, ret);
		}
	}

	if (oob_required)
		FUNC13(nand, nand->oob_poi,
						NULL, !raw_mode,
						page);

	return max_bitflips;
}