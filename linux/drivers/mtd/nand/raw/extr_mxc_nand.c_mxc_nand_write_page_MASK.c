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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mxc_nand_host {TYPE_1__* devtype_data; int /*<<< orphan*/  main_area0; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_cmd ) (struct mxc_nand_host*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* send_page ) (struct mtd_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_hwecc ) (struct nand_chip*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CMD_PAGEPROG ; 
 int /*<<< orphan*/  NAND_CMD_SEQIN ; 
 int /*<<< orphan*/  NFC_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 struct mxc_nand_host* FUNC3 (struct nand_chip*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mxc_nand_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mxc_nand_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, const uint8_t *buf,
			       bool ecc, int page)
{
	struct mtd_info *mtd = FUNC4(chip);
	struct mxc_nand_host *host = FUNC3(chip);

	host->devtype_data->enable_hwecc(chip, ecc);

	host->devtype_data->send_cmd(host, NAND_CMD_SEQIN, false);
	FUNC2(mtd, 0, page);

	FUNC1(host->main_area0, buf, mtd->writesize);
	FUNC0(mtd, false, chip->oob_poi);

	host->devtype_data->send_page(mtd, NFC_INPUT);
	host->devtype_data->send_cmd(host, NAND_CMD_PAGEPROG, true);
	FUNC2(mtd, 0, page);

	return 0;
}