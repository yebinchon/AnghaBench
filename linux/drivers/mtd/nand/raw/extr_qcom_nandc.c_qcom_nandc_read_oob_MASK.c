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
struct qcom_nand_host {int use_ecc; } ;
struct qcom_nand_controller {int dummy; } ;
struct nand_ecc_ctrl {int /*<<< orphan*/  steps; } ;
struct nand_chip {int /*<<< orphan*/  oob_poi; struct nand_ecc_ctrl ecc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct qcom_nand_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qcom_nand_host*,int /*<<< orphan*/ ,int) ; 
 struct qcom_nand_host* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_nand_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, int page)
{
	struct qcom_nand_host *host = FUNC5(chip);
	struct qcom_nand_controller *nandc = FUNC2(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;

	FUNC1(nandc);
	FUNC0(nandc);

	host->use_ecc = true;
	FUNC4(host, 0, page);
	FUNC6(host, ecc->steps, true);

	return FUNC3(host, NULL, chip->oob_poi, page);
}