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
struct s3c2410_nand_info {scalar_t__ regs; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 unsigned int NAND_CLE ; 
 int NAND_CMD_NONE ; 
 scalar_t__ S3C2440_NFADDR ; 
 scalar_t__ S3C2440_NFCMD ; 
 struct mtd_info* FUNC0 (struct nand_chip*) ; 
 struct s3c2410_nand_info* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip, int cmd,
				   unsigned int ctrl)
{
	struct mtd_info *mtd = FUNC0(chip);
	struct s3c2410_nand_info *info = FUNC1(mtd);

	if (cmd == NAND_CMD_NONE)
		return;

	if (ctrl & NAND_CLE)
		FUNC2(cmd, info->regs + S3C2440_NFCMD);
	else
		FUNC2(cmd, info->regs + S3C2440_NFADDR);
}