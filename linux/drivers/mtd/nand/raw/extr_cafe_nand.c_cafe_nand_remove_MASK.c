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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct cafe_priv {int /*<<< orphan*/  dmaaddr; int /*<<< orphan*/  dmabuf; TYPE_1__* pdev; int /*<<< orphan*/  mmio; int /*<<< orphan*/  rs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_IRQ_MASK ; 
 int FUNC0 (struct cafe_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cafe_priv*) ; 
 struct nand_chip* FUNC6 (struct mtd_info*) ; 
 struct cafe_priv* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*) ; 
 struct mtd_info* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct mtd_info *mtd = FUNC9(pdev);
	struct nand_chip *chip = FUNC6(mtd);
	struct cafe_priv *cafe = FUNC7(chip);

	/* Disable NAND IRQ in global IRQ mask register */
	FUNC1(cafe, ~1 & FUNC0(cafe, GLOBAL_IRQ_MASK), GLOBAL_IRQ_MASK);
	FUNC3(pdev->irq, mtd);
	FUNC8(chip);
	FUNC4(cafe->rs);
	FUNC10(pdev, cafe->mmio);
	FUNC2(&cafe->pdev->dev, 2112, cafe->dmabuf, cafe->dmaaddr);
	FUNC5(cafe);
}