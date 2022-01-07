
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_mtd {int chip; } ;
struct s3c2410_nand_info {int mtd_count; int clk; struct s3c2410_nand_mtd* mtds; } ;
struct platform_device {int dummy; } ;


 int CLOCK_DISABLE ;
 int IS_ERR (int ) ;
 int nand_release (int *) ;
 int pr_debug (char*,int,struct s3c2410_nand_mtd*) ;
 int s3c2410_nand_clk_set_state (struct s3c2410_nand_info*,int ) ;
 int s3c2410_nand_cpufreq_deregister (struct s3c2410_nand_info*) ;
 struct s3c2410_nand_info* to_nand_info (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_nand_remove(struct platform_device *pdev)
{
 struct s3c2410_nand_info *info = to_nand_info(pdev);

 if (info == ((void*)0))
  return 0;

 s3c2410_nand_cpufreq_deregister(info);





 if (info->mtds != ((void*)0)) {
  struct s3c2410_nand_mtd *ptr = info->mtds;
  int mtdno;

  for (mtdno = 0; mtdno < info->mtd_count; mtdno++, ptr++) {
   pr_debug("releasing mtd %d (%p)\n", mtdno, ptr);
   nand_release(&ptr->chip);
  }
 }



 if (!IS_ERR(info->clk))
  s3c2410_nand_clk_set_state(info, CLOCK_DISABLE);

 return 0;
}
