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
struct qcom_nand_controller {int buf_count; int /*<<< orphan*/  dev; } ;
struct nand_ecc_ctrl {int /*<<< orphan*/  steps; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;

/* Variables and functions */
#define  NAND_CMD_ERASE1 136 
#define  NAND_CMD_NONE 135 
#define  NAND_CMD_PAGEPROG 134 
#define  NAND_CMD_PARAM 133 
#define  NAND_CMD_READ0 132 
#define  NAND_CMD_READID 131 
#define  NAND_CMD_RESET 130 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (struct qcom_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*) ; 
 struct qcom_nand_controller* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct qcom_nand_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_nand_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_nand_host*,unsigned int) ; 
 int FUNC8 (struct qcom_nand_host*,int) ; 
 int FUNC9 (struct qcom_nand_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct qcom_nand_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct qcom_nand_controller*) ; 
 struct qcom_nand_host* FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_nand_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(struct nand_chip *chip, unsigned int command,
			       int column, int page_addr)
{
	struct qcom_nand_host *host = FUNC12(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	struct qcom_nand_controller *nandc = FUNC4(chip);
	bool wait = false;
	int ret = 0;

	FUNC7(host, command);

	switch (command) {
	case NAND_CMD_RESET:
		ret = FUNC9(host);
		wait = true;
		break;

	case NAND_CMD_READID:
		nandc->buf_count = 4;
		ret = FUNC8(host, column);
		wait = true;
		break;

	case NAND_CMD_PARAM:
		ret = FUNC5(host);
		wait = true;
		break;

	case NAND_CMD_ERASE1:
		ret = FUNC2(host, page_addr);
		wait = true;
		break;

	case NAND_CMD_READ0:
		/* we read the entire page for now */
		FUNC0(column != 0);

		host->use_ecc = true;
		FUNC10(host, 0, page_addr);
		FUNC13(host, ecc->steps, true);
		break;

	case NAND_CMD_SEQIN:
		FUNC0(column != 0);
		FUNC10(host, 0, page_addr);
		break;

	case NAND_CMD_PAGEPROG:
	case NAND_CMD_STATUS:
	case NAND_CMD_NONE:
	default:
		break;
	}

	if (ret) {
		FUNC1(nandc->dev, "failure executing command %d\n",
			command);
		FUNC3(nandc);
		return;
	}

	if (wait) {
		ret = FUNC11(nandc);
		if (ret)
			FUNC1(nandc->dev,
				"failure submitting descs for command %d\n",
				command);
	}

	FUNC3(nandc);

	FUNC6(host, command);
}