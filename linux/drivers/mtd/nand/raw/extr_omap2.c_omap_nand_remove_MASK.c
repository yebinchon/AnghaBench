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
struct platform_device {int dummy; } ;
struct omap_nand_info {scalar_t__ dma; } ;
struct TYPE_2__ {int /*<<< orphan*/ * priv; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 
 struct omap_nand_info* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 struct mtd_info* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mtd_info *mtd = FUNC5(pdev);
	struct nand_chip *nand_chip = FUNC1(mtd);
	struct omap_nand_info *info = FUNC2(mtd);
	if (nand_chip->ecc.priv) {
		FUNC3(nand_chip->ecc.priv);
		nand_chip->ecc.priv = NULL;
	}
	if (info->dma)
		FUNC0(info->dma);
	FUNC4(nand_chip);
	return 0;
}