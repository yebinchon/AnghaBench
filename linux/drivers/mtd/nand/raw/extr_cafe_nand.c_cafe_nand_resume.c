
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_dev {int dummy; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct cafe_priv {int dmaaddr; } ;


 int GLOBAL_CTRL ;
 int GLOBAL_IRQ_MASK ;
 int NAND_DMA_ADDR0 ;
 int NAND_DMA_ADDR1 ;
 int NAND_DMA_CTRL ;
 int NAND_IRQ_MASK ;
 int NAND_RESET ;
 int NAND_TIMING1 ;
 int NAND_TIMING2 ;
 int NAND_TIMING3 ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int,int ) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* pci_get_drvdata (struct pci_dev*) ;
 int* timing ;

__attribute__((used)) static int cafe_nand_resume(struct pci_dev *pdev)
{
 uint32_t ctrl;
 struct mtd_info *mtd = pci_get_drvdata(pdev);
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct cafe_priv *cafe = nand_get_controller_data(chip);


 cafe_writel(cafe, 1, NAND_RESET);
 cafe_writel(cafe, 0, NAND_RESET);
 cafe_writel(cafe, 0xffffffff, NAND_IRQ_MASK);


 cafe_writel(cafe, timing[0], NAND_TIMING1);
 cafe_writel(cafe, timing[1], NAND_TIMING2);
 cafe_writel(cafe, timing[2], NAND_TIMING3);


 ctrl = cafe_readl(cafe, GLOBAL_CTRL);
 ctrl &= 0xffffeff0;
 ctrl |= 0x00007000;
 cafe_writel(cafe, ctrl | 0x05, GLOBAL_CTRL);
 cafe_writel(cafe, ctrl | 0x0a, GLOBAL_CTRL);
 cafe_writel(cafe, 0, NAND_DMA_CTRL);
 cafe_writel(cafe, 0x7006, GLOBAL_CTRL);
 cafe_writel(cafe, 0x700a, GLOBAL_CTRL);


 cafe_writel(cafe, cafe->dmaaddr & 0xffffffff, NAND_DMA_ADDR0);
 if (sizeof(cafe->dmaaddr) > 4)

  cafe_writel(cafe, (cafe->dmaaddr >> 16) >> 16, NAND_DMA_ADDR1);
 else
  cafe_writel(cafe, 0, NAND_DMA_ADDR1);


 cafe_writel(cafe, 0x80000007, GLOBAL_IRQ_MASK);
 return 0;
}
