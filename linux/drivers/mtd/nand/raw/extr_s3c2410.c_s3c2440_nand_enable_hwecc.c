
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {scalar_t__ regs; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ S3C2440_NFCONT ;
 unsigned long S3C2440_NFCONT_INITECC ;
 int nand_to_mtd (struct nand_chip*) ;
 unsigned long readl (scalar_t__) ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (int ) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void s3c2440_nand_enable_hwecc(struct nand_chip *chip, int mode)
{
 struct s3c2410_nand_info *info;
 unsigned long ctrl;

 info = s3c2410_nand_mtd_toinfo(nand_to_mtd(chip));
 ctrl = readl(info->regs + S3C2440_NFCONT);
 writel(ctrl | S3C2440_NFCONT_INITECC, info->regs + S3C2440_NFCONT);
}
