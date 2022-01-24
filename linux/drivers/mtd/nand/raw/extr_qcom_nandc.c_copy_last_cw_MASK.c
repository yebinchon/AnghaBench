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
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct qcom_nand_host {int cw_data; int cw_size; scalar_t__ use_ecc; struct nand_chip chip; } ;
struct qcom_nand_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  data_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLASH_BUF_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_nand_host*,int,int) ; 
 int FUNC8 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_nand_host*,int,int) ; 

__attribute__((used)) static int FUNC10(struct qcom_nand_host *host, int page)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC4(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int size;
	int ret;

	FUNC0(nandc);

	size = host->use_ecc ? host->cw_data : host->cw_size;

	/* prepare a clean read buffer */
	FUNC5(nandc->data_buffer, 0xff, size);

	FUNC7(host, host->cw_size * (ecc->steps - 1), page);
	FUNC9(host, 1, true);

	FUNC1(nandc, host->use_ecc);

	FUNC6(nandc, FLASH_BUF_ACC, nandc->data_buffer, size, 0);

	ret = FUNC8(nandc);
	if (ret)
		FUNC2(nandc->dev, "failed to copy last codeword\n");

	FUNC3(nandc);

	return ret;
}