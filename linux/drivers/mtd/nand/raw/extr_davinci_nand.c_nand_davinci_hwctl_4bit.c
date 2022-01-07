
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int dummy; } ;
struct davinci_nand_info {int core_chipsel; int is_readmode; } ;


 int BIT (int) ;
 int NANDFCR_OFFSET ;
 int NAND_4BIT_ECC1_OFFSET ;
 int NAND_ECC_READ ;
 int davinci_nand_lock ;
 int davinci_nand_readl (struct davinci_nand_info*,int ) ;
 int davinci_nand_writel (struct davinci_nand_info*,int ,int) ;
 int nand_to_mtd (struct nand_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct davinci_nand_info* to_davinci_nand (int ) ;

__attribute__((used)) static void nand_davinci_hwctl_4bit(struct nand_chip *chip, int mode)
{
 struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(chip));
 unsigned long flags;
 u32 val;


 davinci_nand_readl(info, NAND_4BIT_ECC1_OFFSET);

 spin_lock_irqsave(&davinci_nand_lock, flags);


 val = davinci_nand_readl(info, NANDFCR_OFFSET);
 val &= ~(0x03 << 4);
 val |= (info->core_chipsel << 4) | BIT(12);
 davinci_nand_writel(info, NANDFCR_OFFSET, val);

 info->is_readmode = (mode == NAND_ECC_READ);

 spin_unlock_irqrestore(&davinci_nand_lock, flags);
}
