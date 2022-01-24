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
struct qcom_nand_host {int cw_size; int use_ecc; } ;
struct qcom_nand_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  data_buffer; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {int page_shift; int pagemask; struct nand_ecc_ctrl ecc; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FLASH_BUF_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC6 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_nand_host*,int,int) ; 
 int FUNC10 (struct qcom_nand_controller*) ; 
 struct qcom_nand_host* FUNC11 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct qcom_nand_host*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct nand_chip *chip, loff_t ofs)
{
	struct qcom_nand_host *host = FUNC11(chip);
	struct qcom_nand_controller *nandc = FUNC6(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int page, ret;

	FUNC1(nandc);
	FUNC0(nandc);

	/*
	 * to mark the BBM as bad, we flash the entire last codeword with 0s.
	 * we don't care about the rest of the content in the codeword since
	 * we aren't going to use this block again
	 */
	FUNC7(nandc->data_buffer, 0x00, host->cw_size);

	page = (int)(ofs >> chip->page_shift) & chip->pagemask;

	/* prepare write */
	host->use_ecc = false;
	FUNC9(host, host->cw_size * (ecc->steps - 1), page);
	FUNC12(host, 1, false);

	FUNC3(nandc);
	FUNC13(nandc, FLASH_BUF_ACC,
		       nandc->data_buffer, host->cw_size, 0);
	FUNC2(nandc);

	ret = FUNC10(nandc);

	FUNC5(nandc);

	if (ret) {
		FUNC4(nandc->dev, "failure to update BBM\n");
		return -EIO;
	}

	return FUNC8(chip);
}