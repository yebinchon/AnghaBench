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
typedef  int /*<<< orphan*/  u_char ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;

/* Variables and functions */
 struct mtd_info* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip, u_char *buf,
				   int len)
{
	struct mtd_info *mtd = FUNC0(chip);

	if (len <= mtd->oobsize)
		FUNC2(chip, buf, len);
	else
		/* start transfer in DMA mode */
		FUNC1(mtd, buf, len, 0x0);
}