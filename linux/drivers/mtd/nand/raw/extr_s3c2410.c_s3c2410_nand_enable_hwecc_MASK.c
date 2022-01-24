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

/* Variables and functions */
 scalar_t__ S3C2410_NFCONF ; 
 unsigned long S3C2410_NFCONF_INITECC ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct s3c2410_nand_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, int mode)
{
	struct s3c2410_nand_info *info;
	unsigned long ctrl;

	info = FUNC2(FUNC0(chip));
	ctrl = FUNC1(info->regs + S3C2410_NFCONF);
	ctrl |= S3C2410_NFCONF_INITECC;
	FUNC3(ctrl, info->regs + S3C2410_NFCONF);
}