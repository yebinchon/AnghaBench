
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t loff_t ;
struct TYPE_3__ {size_t erasesize; } ;


 void* iobuf ;
 TYPE_1__* mtd ;
 int mtdtest_write (TYPE_1__*,size_t,int,void*) ;
 int pgcnt ;
 int pgsize ;

__attribute__((used)) static int write_eraseblock_by_2pages(int ebnum)
{
 size_t sz = pgsize * 2;
 int i, n = pgcnt / 2, err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;
 void *buf = iobuf;

 for (i = 0; i < n; i++) {
  err = mtdtest_write(mtd, addr, sz, buf);
  if (err)
   return err;
  addr += sz;
  buf += sz;
 }
 if (pgcnt % 2)
  err = mtdtest_write(mtd, addr, pgsize, buf);

 return err;
}
