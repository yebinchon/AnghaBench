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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_host {int /*<<< orphan*/  last_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmnand_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*) ; 
 struct brcmnand_host* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, const uint8_t *buf,
				   int oob_required, int page)
{
	struct mtd_info *mtd = FUNC5(chip);
	struct brcmnand_host *host = FUNC2(chip);
	void *oob = oob_required ? chip->oob_poi : NULL;

	FUNC3(chip, page, 0, NULL, 0);
	FUNC0(host, 0);
	FUNC1(mtd, chip, host->last_addr, (const u32 *)buf, oob);
	FUNC0(host, 1);

	return FUNC4(chip);
}