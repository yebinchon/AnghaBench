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
struct qcom_nand_host {int use_ecc; int cw_size; int bbm_size; int ecc_bytes_hw; int spare_bytes; int cw_data; } ;
struct qcom_nand_controller {int /*<<< orphan*/  dev; } ;
struct nand_ecc_ctrl {int steps; int size; } ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int FLASH_BUF_ACC ; 
 int /*<<< orphan*/  NAND_BAM_NO_EOT ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 int FUNC10 (struct qcom_nand_controller*) ; 
 struct qcom_nand_host* FUNC11 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct qcom_nand_host*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_nand_controller*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct nand_chip *chip,
				     const uint8_t *buf, int oob_required,
				     int page)
{
	struct mtd_info *mtd = FUNC9(chip);
	struct qcom_nand_host *host = FUNC11(chip);
	struct qcom_nand_controller *nandc = FUNC6(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	u8 *data_buf, *oob_buf;
	int i, ret;

	FUNC7(chip, page, 0, NULL, 0);
	FUNC1(nandc);
	FUNC0(nandc);

	data_buf = (u8 *)buf;
	oob_buf = chip->oob_poi;

	host->use_ecc = false;
	FUNC12(host, ecc->steps, false);
	FUNC3(nandc);

	for (i = 0; i < ecc->steps; i++) {
		int data_size1, data_size2, oob_size1, oob_size2;
		int reg_off = FLASH_BUF_ACC;

		data_size1 = mtd->writesize - host->cw_size * (ecc->steps - 1);
		oob_size1 = host->bbm_size;

		if (i == (ecc->steps - 1)) {
			data_size2 = ecc->size - data_size1 -
				     ((ecc->steps - 1) << 2);
			oob_size2 = (ecc->steps << 2) + host->ecc_bytes_hw +
				    host->spare_bytes;
		} else {
			data_size2 = host->cw_data - data_size1;
			oob_size2 = host->ecc_bytes_hw + host->spare_bytes;
		}

		FUNC13(nandc, reg_off, data_buf, data_size1,
			       NAND_BAM_NO_EOT);
		reg_off += data_size1;
		data_buf += data_size1;

		FUNC13(nandc, reg_off, oob_buf, oob_size1,
			       NAND_BAM_NO_EOT);
		reg_off += oob_size1;
		oob_buf += oob_size1;

		FUNC13(nandc, reg_off, data_buf, data_size2,
			       NAND_BAM_NO_EOT);
		reg_off += data_size2;
		data_buf += data_size2;

		FUNC13(nandc, reg_off, oob_buf, oob_size2, 0);
		oob_buf += oob_size2;

		FUNC2(nandc);
	}

	ret = FUNC10(nandc);
	if (ret)
		FUNC4(nandc->dev, "failure to write raw page\n");

	FUNC5(nandc);

	if (!ret)
		ret = FUNC8(chip);

	return ret;
}