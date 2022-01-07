
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int erasesize; } ;
struct erase_info {int addr; int len; } ;
typedef int loff_t ;


 int memset (struct erase_info*,int ,int) ;
 int mtd_erase (struct mtd_info*,struct erase_info*) ;
 int pr_info (char*,int,unsigned int) ;

int mtdtest_erase_eraseblock(struct mtd_info *mtd, unsigned int ebnum)
{
 int err;
 struct erase_info ei;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 memset(&ei, 0, sizeof(struct erase_info));
 ei.addr = addr;
 ei.len = mtd->erasesize;

 err = mtd_erase(mtd, &ei);
 if (err) {
  pr_info("error %d while erasing EB %d\n", err, ebnum);
  return err;
 }

 return 0;
}
