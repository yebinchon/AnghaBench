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
struct qcom_nand_host {int use_ecc; int cw_size; } ;
struct qcom_nand_controller {int* data_buffer; int /*<<< orphan*/  dev; } ;
struct nand_ecc_ctrl {int steps; } ;
struct nand_chip {int page_shift; int pagemask; int options; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; } ;
typedef  int loff_t ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 scalar_t__ FUNC0 (struct qcom_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*) ; 
 int FUNC2 (struct qcom_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct qcom_nand_controller* FUNC4 (struct nand_chip*) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 struct qcom_nand_host* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, loff_t ofs)
{
	struct mtd_info *mtd = FUNC5(chip);
	struct qcom_nand_host *host = FUNC6(chip);
	struct qcom_nand_controller *nandc = FUNC4(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int page, ret, bbpos, bad = 0;

	page = (int)(ofs >> chip->page_shift) & chip->pagemask;

	/*
	 * configure registers for a raw sub page read, the address is set to
	 * the beginning of the last codeword, we don't care about reading ecc
	 * portion of oob. we just want the first few bytes from this codeword
	 * that contains the BBM
	 */
	host->use_ecc = false;

	FUNC1(nandc);
	ret = FUNC2(host, page);
	if (ret)
		goto err;

	if (FUNC0(host, 1)) {
		FUNC3(nandc->dev, "error when trying to read BBM\n");
		goto err;
	}

	bbpos = mtd->writesize - host->cw_size * (ecc->steps - 1);

	bad = nandc->data_buffer[bbpos] != 0xff;

	if (chip->options & NAND_BUSWIDTH_16)
		bad = bad || (nandc->data_buffer[bbpos + 1] != 0xff);
err:
	return bad;
}