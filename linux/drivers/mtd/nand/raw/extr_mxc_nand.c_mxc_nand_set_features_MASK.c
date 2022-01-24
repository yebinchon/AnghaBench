#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  (* write_byte ) (struct nand_chip*,int /*<<< orphan*/ ) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mxc_nand_host {TYPE_2__* devtype_data; int /*<<< orphan*/  data_buf; int /*<<< orphan*/  main_area0; scalar_t__ buf_start; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* send_page ) (struct mtd_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* send_cmd ) (struct mxc_nand_host*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_SET_FEATURES ; 
 int /*<<< orphan*/  NFC_INPUT ; 
 int ONFI_SUBFEATURE_PARAM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int,int) ; 
 struct mxc_nand_host* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mxc_nand_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, int addr,
				 u8 *subfeature_param)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct mxc_nand_host *host = FUNC2(chip);
	int i;

	host->buf_start = 0;

	for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
		chip->legacy.write_byte(chip, subfeature_param[i]);

	FUNC0(host->main_area0, host->data_buf, mtd->writesize);
	host->devtype_data->send_cmd(host, NAND_CMD_SET_FEATURES, false);
	FUNC1(mtd, addr, -1);
	host->devtype_data->send_page(mtd, NFC_INPUT);

	return 0;
}