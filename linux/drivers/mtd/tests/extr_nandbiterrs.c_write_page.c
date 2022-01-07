
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writesize; } ;


 TYPE_1__* mtd ;
 int mtdtest_write (TYPE_1__*,int ,int ,int ) ;
 int offset ;
 int pr_info (char*) ;
 int wbuffer ;

__attribute__((used)) static int write_page(int log)
{
 if (log)
  pr_info("write_page\n");

 return mtdtest_write(mtd, offset, mtd->writesize, wbuffer);
}
