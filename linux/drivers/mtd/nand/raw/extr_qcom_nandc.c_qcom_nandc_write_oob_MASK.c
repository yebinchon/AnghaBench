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
struct qcom_nand_host {int use_ecc; int cw_size; int /*<<< orphan*/  cw_data; } ;
struct qcom_nand_controller {int /*<<< orphan*/  dev; scalar_t__ data_buffer; } ;
struct nand_ecc_ctrl {int size; int steps; } ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int oobavail; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FLASH_BUF_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct qcom_nand_host*,int,int) ; 
 int FUNC11 (struct qcom_nand_controller*) ; 
 struct qcom_nand_host* FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_nand_host*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct qcom_nand_controller*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC9(chip);
	struct qcom_nand_host *host = FUNC12(chip);
	struct qcom_nand_controller *nandc = FUNC5(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	u8 *oob = chip->oob_poi;
	int data_size, oob_size;
	int ret;

	host->use_ecc = true;
	FUNC0(nandc);

	/* calculate the data and oob size for the last codeword/step */
	data_size = ecc->size - ((ecc->steps - 1) << 2);
	oob_size = mtd->oobavail;

	FUNC6(nandc->data_buffer, 0xff, host->cw_data);
	/* override new oob content to last codeword */
	FUNC7(mtd, nandc->data_buffer + data_size, oob,
				    0, mtd->oobavail);

	FUNC10(host, host->cw_size * (ecc->steps - 1), page);
	FUNC13(host, 1, false);

	FUNC2(nandc);
	FUNC14(nandc, FLASH_BUF_ACC,
		       nandc->data_buffer, data_size + oob_size, 0);
	FUNC1(nandc);

	ret = FUNC11(nandc);

	FUNC4(nandc);

	if (ret) {
		FUNC3(nandc->dev, "failure to write oob\n");
		return -EIO;
	}

	return FUNC8(chip);
}