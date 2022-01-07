
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct davinci_nand_info {int dummy; } ;


 int BIT (int ) ;
 int NANDFSR_OFFSET ;
 int davinci_nand_readl (struct davinci_nand_info*,int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct davinci_nand_info* to_davinci_nand (int ) ;

__attribute__((used)) static int nand_davinci_dev_ready(struct nand_chip *chip)
{
 struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(chip));

 return davinci_nand_readl(info, NANDFSR_OFFSET) & BIT(0);
}
