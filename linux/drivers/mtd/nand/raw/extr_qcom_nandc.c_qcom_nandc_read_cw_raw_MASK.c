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
struct qcom_nand_host {int use_ecc; int cw_size; int bbm_size; int ecc_bytes_hw; int spare_bytes; int cw_data; } ;
struct qcom_nand_controller {int /*<<< orphan*/  dev; TYPE_1__* props; } ;
struct nand_ecc_ctrl {int steps; int size; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 int FLASH_BUF_ACC ; 
 int FUNC0 (struct qcom_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qcom_nand_controller*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_nand_controller*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qcom_nand_host*,int,int) ; 
 int FUNC11 (struct qcom_nand_controller*) ; 
 struct qcom_nand_host* FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_nand_host*,int,int) ; 

__attribute__((used)) static int
FUNC14(struct mtd_info *mtd, struct nand_chip *chip,
		       u8 *data_buf, u8 *oob_buf, int page, int cw)
{
	struct qcom_nand_host *host = FUNC12(chip);
	struct qcom_nand_controller *nandc = FUNC6(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int data_size1, data_size2, oob_size1, oob_size2;
	int ret, reg_off = FLASH_BUF_ACC, read_loc = 0;

	FUNC7(chip, page, 0, NULL, 0);
	host->use_ecc = false;

	FUNC1(nandc);
	FUNC10(host, host->cw_size * cw, page);
	FUNC13(host, 1, true);
	FUNC3(nandc);

	data_size1 = mtd->writesize - host->cw_size * (ecc->steps - 1);
	oob_size1 = host->bbm_size;

	if (cw == (ecc->steps - 1)) {
		data_size2 = ecc->size - data_size1 -
			     ((ecc->steps - 1) * 4);
		oob_size2 = (ecc->steps * 4) + host->ecc_bytes_hw +
			    host->spare_bytes;
	} else {
		data_size2 = host->cw_data - data_size1;
		oob_size2 = host->ecc_bytes_hw + host->spare_bytes;
	}

	if (nandc->props->is_bam) {
		FUNC8(nandc, 0, read_loc, data_size1, 0);
		read_loc += data_size1;

		FUNC8(nandc, 1, read_loc, oob_size1, 0);
		read_loc += oob_size1;

		FUNC8(nandc, 2, read_loc, data_size2, 0);
		read_loc += data_size2;

		FUNC8(nandc, 3, read_loc, oob_size2, 1);
	}

	FUNC2(nandc, false);

	FUNC9(nandc, reg_off, data_buf, data_size1, 0);
	reg_off += data_size1;

	FUNC9(nandc, reg_off, oob_buf, oob_size1, 0);
	reg_off += oob_size1;

	FUNC9(nandc, reg_off, data_buf + data_size1, data_size2, 0);
	reg_off += data_size2;

	FUNC9(nandc, reg_off, oob_buf + oob_size1, oob_size2, 0);

	ret = FUNC11(nandc);
	FUNC5(nandc);
	if (ret) {
		FUNC4(nandc->dev, "failure to read raw cw %d\n", cw);
		return ret;
	}

	return FUNC0(host, 1);
}