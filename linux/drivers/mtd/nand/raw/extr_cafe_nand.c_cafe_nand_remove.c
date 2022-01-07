
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct cafe_priv {int dmaaddr; int dmabuf; TYPE_1__* pdev; int mmio; int rs; } ;
struct TYPE_2__ {int dev; } ;


 int GLOBAL_IRQ_MASK ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int,int ) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct mtd_info*) ;
 int free_rs (int ) ;
 int kfree (struct cafe_priv*) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;
 int nand_release (struct nand_chip*) ;
 struct mtd_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;

__attribute__((used)) static void cafe_nand_remove(struct pci_dev *pdev)
{
 struct mtd_info *mtd = pci_get_drvdata(pdev);
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct cafe_priv *cafe = nand_get_controller_data(chip);


 cafe_writel(cafe, ~1 & cafe_readl(cafe, GLOBAL_IRQ_MASK), GLOBAL_IRQ_MASK);
 free_irq(pdev->irq, mtd);
 nand_release(chip);
 free_rs(cafe->rs);
 pci_iounmap(pdev, cafe->mmio);
 dma_free_coherent(&cafe->pdev->dev, 2112, cafe->dmabuf, cafe->dmaaddr);
 kfree(cafe);
}
