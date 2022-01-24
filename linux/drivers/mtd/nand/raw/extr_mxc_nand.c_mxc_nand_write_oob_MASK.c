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
struct mxc_nand_host {int /*<<< orphan*/  data_buf; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,int,int) ; 
 struct mxc_nand_host* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct mxc_nand_host *host = FUNC2(chip);

	FUNC0(host->data_buf, 0xff, mtd->writesize);

	return FUNC1(chip, host->data_buf, false, page);
}