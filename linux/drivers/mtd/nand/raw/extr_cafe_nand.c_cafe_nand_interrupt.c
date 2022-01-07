
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct cafe_priv {TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NAND_IRQ ;
 int cafe_dev_dbg (int *,char*,int,int) ;
 int cafe_readl (struct cafe_priv*,int ) ;
 int cafe_writel (struct cafe_priv*,int,int ) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct cafe_priv* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static irqreturn_t cafe_nand_interrupt(int irq, void *id)
{
 struct mtd_info *mtd = id;
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct cafe_priv *cafe = nand_get_controller_data(chip);
 uint32_t irqs = cafe_readl(cafe, NAND_IRQ);
 cafe_writel(cafe, irqs & ~0x90000000, NAND_IRQ);
 if (!irqs)
  return IRQ_NONE;

 cafe_dev_dbg(&cafe->pdev->dev, "irq, bits %x (%x)\n", irqs, cafe_readl(cafe, NAND_IRQ));
 return IRQ_HANDLED;
}
