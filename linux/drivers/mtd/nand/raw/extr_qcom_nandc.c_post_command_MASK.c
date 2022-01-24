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
struct nand_chip {int dummy; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int /*<<< orphan*/  buf_count; int /*<<< orphan*/  reg_read_buf; int /*<<< orphan*/  data_buffer; } ;

/* Variables and functions */
#define  NAND_CMD_ERASE1 130 
#define  NAND_CMD_PAGEPROG 129 
#define  NAND_CMD_READID 128 
 struct qcom_nand_controller* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_host*,int) ; 

__attribute__((used)) static void FUNC4(struct qcom_nand_host *host, int command)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC0(chip);

	switch (command) {
	case NAND_CMD_READID:
		FUNC2(nandc, true);
		FUNC1(nandc->data_buffer, nandc->reg_read_buf,
		       nandc->buf_count);
		break;
	case NAND_CMD_PAGEPROG:
	case NAND_CMD_ERASE1:
		FUNC3(host, command);
		break;
	default:
		break;
	}
}