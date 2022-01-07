
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {int cpu_type; scalar_t__ regs; } ;


 scalar_t__ S3C2440_NFCONT ;
 int S3C2440_NFCONT_ENABLE ;



 int s3c2410_nand_setrate (struct s3c2410_nand_info*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c2410_nand_inithw(struct s3c2410_nand_info *info)
{
 int ret;

 ret = s3c2410_nand_setrate(info);
 if (ret < 0)
  return ret;

 switch (info->cpu_type) {
 case 130:
 default:
  break;

 case 128:
 case 129:


  writel(S3C2440_NFCONT_ENABLE, info->regs + S3C2440_NFCONT);
 }

 return 0;
}
