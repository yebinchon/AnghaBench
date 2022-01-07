
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 void* iobuf ;
 TYPE_1__* mtd ;
 int mtdtest_write (TYPE_1__*,int,scalar_t__,void*) ;
 int pgcnt ;
 scalar_t__ pgsize ;

__attribute__((used)) static int write_eraseblock_by_page(int ebnum)
{
 int i, err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;
 void *buf = iobuf;

 for (i = 0; i < pgcnt; i++) {
  err = mtdtest_write(mtd, addr, pgsize, buf);
  if (err)
   break;
  addr += pgsize;
  buf += pgsize;
 }

 return err;
}
