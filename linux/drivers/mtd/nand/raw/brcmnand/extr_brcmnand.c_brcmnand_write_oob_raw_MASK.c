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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct nand_chip {int page_shift; scalar_t__ oob_poi; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmnand_host*,int) ; 
 int FUNC1 (struct mtd_info*,struct nand_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct brcmnand_host* FUNC2 (struct nand_chip*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct brcmnand_host *host = FUNC2(chip);
	int ret;

	FUNC0(host, 0);
	ret = FUNC1(mtd, chip, (u64)page << chip->page_shift, NULL,
				 (u8 *)chip->oob_poi);
	FUNC0(host, 1);

	return ret;
}