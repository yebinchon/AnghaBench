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
struct nand_chip {int options; } ;
struct hynix_nand {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BBM_FIRSTPAGE ; 
 int NAND_BBM_LASTPAGE ; 
 int NAND_BBM_SECONDPAGE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct nand_chip*) ; 
 struct hynix_nand* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,struct hynix_nand*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip)
{
	struct hynix_nand *hynix;
	int ret;

	if (!FUNC3(chip))
		chip->options |= NAND_BBM_LASTPAGE;
	else
		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;

	hynix = FUNC2(sizeof(*hynix), GFP_KERNEL);
	if (!hynix)
		return -ENOMEM;

	FUNC4(chip, hynix);

	ret = FUNC1(chip);
	if (ret)
		FUNC0(chip);

	return ret;
}