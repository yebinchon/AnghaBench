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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct read_stats {int /*<<< orphan*/  erased_cw; int /*<<< orphan*/  buffer; int /*<<< orphan*/  flash; } ;
struct nand_ecc_ctrl {int steps; int size; scalar_t__ bytes; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct qcom_nand_host {int cw_data; scalar_t__ bch_enabled; struct nand_chip chip; } ;
struct qcom_nand_controller {scalar_t__ reg_read_buf; } ;
struct TYPE_2__ {unsigned int corrected; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int BS_CORRECTABLE_ERR_MSK ; 
 int BS_UNCORRECTABLE_BIT ; 
 int EIO ; 
 int ERASED_CW ; 
 int FS_MPU_ERR ; 
 int FS_OP_ERR ; 
 int FUNC1 (struct qcom_nand_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct qcom_nand_controller* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_nand_controller*,int) ; 

__attribute__((used)) static int FUNC8(struct qcom_nand_host *host, u8 *data_buf,
			     u8 *oob_buf, int page)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC3(chip);
	struct mtd_info *mtd = FUNC6(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	unsigned int max_bitflips = 0, uncorrectable_cws = 0;
	struct read_stats *buf;
	bool flash_op_err = false, erased;
	int i;
	u8 *data_buf_start = data_buf, *oob_buf_start = oob_buf;

	buf = (struct read_stats *)nandc->reg_read_buf;
	FUNC7(nandc, true);

	for (i = 0; i < ecc->steps; i++, buf++) {
		u32 flash, buffer, erased_cw;
		int data_len, oob_len;

		if (i == (ecc->steps - 1)) {
			data_len = ecc->size - ((ecc->steps - 1) << 2);
			oob_len = ecc->steps << 2;
		} else {
			data_len = host->cw_data;
			oob_len = 0;
		}

		flash = FUNC4(buf->flash);
		buffer = FUNC4(buf->buffer);
		erased_cw = FUNC4(buf->erased_cw);

		/*
		 * Check ECC failure for each codeword. ECC failure can
		 * happen in either of the following conditions
		 * 1. If number of bitflips are greater than ECC engine
		 *    capability.
		 * 2. If this codeword contains all 0xff for which erased
		 *    codeword detection check will be done.
		 */
		if ((flash & FS_OP_ERR) && (buffer & BS_UNCORRECTABLE_BIT)) {
			/*
			 * For BCH ECC, ignore erased codeword errors, if
			 * ERASED_CW bits are set.
			 */
			if (host->bch_enabled) {
				erased = (erased_cw & ERASED_CW) == ERASED_CW ?
					 true : false;
			/*
			 * For RS ECC, HW reports the erased CW by placing
			 * special characters at certain offsets in the buffer.
			 * These special characters will be valid only if
			 * complete page is read i.e. data_buf is not NULL.
			 */
			} else if (data_buf) {
				erased = FUNC2(data_buf,
								      data_len);
			} else {
				erased = false;
			}

			if (!erased)
				uncorrectable_cws |= FUNC0(i);
		/*
		 * Check if MPU or any other operational error (timeout,
		 * device failure, etc.) happened for this codeword and
		 * make flash_op_err true. If flash_op_err is set, then
		 * EIO will be returned for page read.
		 */
		} else if (flash & (FS_OP_ERR | FS_MPU_ERR)) {
			flash_op_err = true;
		/*
		 * No ECC or operational errors happened. Check the number of
		 * bits corrected and update the ecc_stats.corrected.
		 */
		} else {
			unsigned int stat;

			stat = buffer & BS_CORRECTABLE_ERR_MSK;
			mtd->ecc_stats.corrected += stat;
			max_bitflips = FUNC5(max_bitflips, stat);
		}

		if (data_buf)
			data_buf += data_len;
		if (oob_buf)
			oob_buf += oob_len + ecc->bytes;
	}

	if (flash_op_err)
		return -EIO;

	if (!uncorrectable_cws)
		return max_bitflips;

	return FUNC1(host, data_buf_start, oob_buf_start,
				     uncorrectable_cws, page,
				     max_bitflips);
}