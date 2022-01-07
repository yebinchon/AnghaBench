
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mtd_oob_ops {scalar_t__ ooblen; scalar_t__ oobretlen; void* oobbuf; int * datbuf; scalar_t__ ooboffs; scalar_t__ retlen; scalar_t__ len; int mode; } ;
typedef int loff_t ;
struct TYPE_4__ {int erasesize; scalar_t__ oobsize; } ;


 int EINVAL ;
 int MTD_OPS_PLACE_OOB ;
 void* iobuf ;
 void* iobuf1 ;
 int memset (void*,int ,int) ;
 TYPE_1__* mtd ;
 int mtd_is_bitflip (int) ;
 int mtd_read_oob (TYPE_1__*,int,struct mtd_oob_ops*) ;
 int mtdtest_read (TYPE_1__*,int,int,void*) ;
 int pgcnt ;
 int pgsize ;
 int pr_err (char*,long long) ;

__attribute__((used)) static int read_eraseblock_by_page(int ebnum)
{
 int i, ret, err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;
 void *buf = iobuf;
 void *oobbuf = iobuf1;

 for (i = 0; i < pgcnt; i++) {
  memset(buf, 0 , pgsize);
  ret = mtdtest_read(mtd, addr, pgsize, buf);
  if (ret) {
   if (!err)
    err = ret;
  }
  if (mtd->oobsize) {
   struct mtd_oob_ops ops;

   ops.mode = MTD_OPS_PLACE_OOB;
   ops.len = 0;
   ops.retlen = 0;
   ops.ooblen = mtd->oobsize;
   ops.oobretlen = 0;
   ops.ooboffs = 0;
   ops.datbuf = ((void*)0);
   ops.oobbuf = oobbuf;
   ret = mtd_read_oob(mtd, addr, &ops);
   if ((ret && !mtd_is_bitflip(ret)) ||
     ops.oobretlen != mtd->oobsize) {
    pr_err("error: read oob failed at "
        "%#llx\n", (long long)addr);
    if (!err)
     err = ret;
    if (!err)
     err = -EINVAL;
   }
   oobbuf += mtd->oobsize;
  }
  addr += pgsize;
  buf += pgsize;
 }

 return err;
}
