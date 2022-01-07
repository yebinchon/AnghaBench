
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct erase_info {int addr; int len; } ;
typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 int memset (struct erase_info*,int ,int) ;
 TYPE_1__* mtd ;
 int mtd_erase (TYPE_1__*,struct erase_info*) ;
 int pr_err (char*,int,int,int) ;

__attribute__((used)) static int multiblock_erase(int ebnum, int blocks)
{
 int err;
 struct erase_info ei;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 memset(&ei, 0, sizeof(struct erase_info));
 ei.addr = addr;
 ei.len = mtd->erasesize * blocks;

 err = mtd_erase(mtd, &ei);
 if (err) {
  pr_err("error %d while erasing EB %d, blocks %d\n",
         err, ebnum, blocks);
  return err;
 }

 return 0;
}
